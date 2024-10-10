// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// rights to the materials distributed herewith. Except as 
// otherwise provided in a valid license issued to you by 
// Xilinx, and to the maximum extent permitted by applicable 
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND 
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES 
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING 
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON- 
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
// (2) Xilinx shall not be liable (whether in contract or tort, 
// including negligence, or under any other theory of 
// liability) for any loss or damage of any kind or nature 
// related to, arising under or in connection with these 
// materials, including for any direct, or any indirect, 
// special, incidental, or consequential loss or damage 
// (including loss of data, profits, goodwill, or any type of 
// loss or damage suffered as a result of any action brought 
// by a third party) even if such damage or loss was 
// reasonably foreseeable or Xilinx had been advised of the 
// possibility of the same. 
// 
// CRITICAL APPLICATIONS 
// Xilinx products are not designed or intended to be fail- 
// safe, or for use in any application requiring fail-safe 
// performance, such as life-support or safety devices or 
// systems, Class III medical devices, nuclear facilities, 
// applications related to the deployment of airbags, or any 
// other applications that could lead to death, personal 
// injury, or severe property or environmental damage 
// (individually and collectively, "Critical 
// Applications").  Customer assumes the sole risk and 
// liability of any use of Xilinx products in Critical 
// Applications, subject only to applicable laws and 
// regulations governing limitations on product liability. 
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS 
// PART OF THIS FILE AT ALL TIMES. 
 

#include "sk_client.h"
#include <iostream>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <errno.h>
#define STR_MAX_LEN 106

bool sk_client::client_started = false;
sk_client* sk_client::_inst= NULL;

sk_client* sk_client::getInstance()
{
    if(! _inst)
    {
       _inst = new sk_client();
    }
    if(!client_started) 
    {
      _inst->start_client();
      client_started = true;
      if(fcntl(_inst->fd,F_SETFL,O_NONBLOCK) < 0)
      {
        exit(1);
      }
    }
    return _inst;
}

void sk_client::start_client()
{
    std::string sock_id = "";
    std::string user = getenv("USER");
    if(getenv("EMULATION_SOCKETID")) {
      sock_id = getenv("EMULATION_SOCKETID");
    } else {
      sock_id = "xcl_sock";
    }
    desc = "/tmp/" + user + "/" + sock_id;
    struct sockaddr_un server;
    int sock;

    sock = socket(AF_UNIX, SOCK_STREAM, 0);
    if(sock < 0) {
      perror("opening stream socket");
      exit(1);
    }
    server.sun_family = AF_UNIX;
    strncpy(server.sun_path, desc.c_str(),STR_MAX_LEN);

    if (connect(sock, (struct sockaddr *) &server, sizeof(struct sockaddr_un)) >= 0) {
      fd = sock;
      return;
    }
    unlink(server.sun_path);
    if (bind(sock, (struct sockaddr *) &server, sizeof(struct sockaddr_un))) {
      close(sock);
      perror("binding stream socket");
      exit(1);
    }
    if(listen(sock, 5) < 0)
    {
      exit(1);
    }
    fd = accept(sock, 0, 0);
    close(sock);
    if (fd == -1){
      perror("socket acceptance failed");
      exit(1);
    }
}

size_t sk_client::sk_nb_read(void* rbuf, size_t count)
{
  ssize_t r;
  size_t rlen = 0;
  unsigned char *buf = (unsigned char*)(rbuf);

  do{
    if ((r = read(fd, buf + rlen, count - rlen)) < 0) {
      if (errno == EINTR || errno == EAGAIN) {
        if(rlen==0) return -1;
		else continue;
      }
    }
    rlen += r;
  } while (rlen < count && r);
  return rlen;
}

size_t sk_client::sk_b_read(void* rbuf, size_t count)
{
  fd_set rfds;
  FD_ZERO(&rfds);
  FD_SET(fd,&rfds);
  //struct timeval tv;
  //tv.tv_sec = 5;
  //tv.tv_usec = 0;
  //int r = select(fd+1,&rfds, NULL, NULL, &tv);
  int r = select(fd+1,&rfds, NULL, NULL, NULL);
  assert(r != -1); 
  return(sk_nb_read(rbuf,count));
}

size_t sk_client::sk_write(const void *wbuf, size_t count)
{
  ssize_t r;
	size_t wlen = 0;
	const unsigned char *buf = (const unsigned char*)(wbuf);

	do {
		if ((r = write(fd, buf + wlen, count - wlen)) < 0) {
			if (errno == EINTR || errno == EAGAIN) {
				continue;
			} 
			return -1;
		}
		wlen += r;
	} while (wlen < count);

	return wlen;
}


