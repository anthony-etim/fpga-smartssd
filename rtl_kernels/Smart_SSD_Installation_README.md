# README #

This README would normally document the steps that are necessary to get your SmartSSD installed and running application examples.


## How do I get set up? ##

#### Installation of SmartSSD ####

To verify that the device has been installed correctly, enter the following Linux command in the terminal:
~~~~
$ lspci | grep -i xilinx
~~~~
To verify that the controller is properly enumerated, enter the following Linux command in the terminal:
~~~~
$ lspci | grep -i samsung
~~~~
After the steps above are successful, enter the following command in the terminal. 
The output of this command must show the enumerated SSD name space. In this example, it is nvme0n1.
~~~~
$ lsblk
~~~~

#### Software Installation ####

You need to install:

* Xilinx Runtime (XRT) and
* Deployment/Development platform

## XRT and Deployment/Development Platform Installation Procedures on Ubuntu ##

1.  Download the XRT installation package corresponding to your OS and version from [SmartSSD Computational Storage Device Download](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/alveo/smartssd.html)

2.  Install the XRT installation package by running the following command from within the directory where the XRT installation packages reside.
~~~~
$ sudo apt install ./xrt*.deb
~~~~
3.  Download and extract the deployment/development installation file based on your OS and version from [SmartSSD Computational Storage Device Download](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/alveo/smartssd.html)

4.  Install the deployment/development packages. From within the directory where the installation packages were extracted, run the following commands. This will install all deployment/development packages.
~~~~
Part of development package:

$ sudo apt install ./xilinx-u2-gen3x4-xdma-gc-2-202110-1-dev*.deb

$ sudo apt install ./xilinx-u2-gen3x4-xdma-gc-validate_2*.deb

Part of both deployment & development package:

$ sudo apt install ./xilinx-u2-gen3x4-xdma-gc-base_2*.deb
~~~~
5. Flash firmware with 
~~~~
$ sudo /opt/xilinx/xrt/bin/xbmgmt flash --update --shell xilinx_u2_gen3x4_xdma_gc_base_2
~~~~

6. Cold reboot (**Warning: Always use an external fan to prevent damage of SmartSSD due to high temperatures !**)

### Card Bring-Up and Validation ###
After installing the XRT and deployment (or development) platform, the module installation can be verified and tested.
More details in pages 17-27 of [SmartSSD User Guide](https://docs.xilinx.com/v/u/en-US/ug1382-smartssd-csd)

## Next Steps ##
If you are an application developer who wants to develop and deliver accelerated applications,install the [Vitis](https://www.xilinx.com/support/download.html) software platform. 

It allows you to develop, debug, and optimize accelerated applications for the SmartSSD CSD module.

Before installing Vitis, please make sure to install these packages:
~~~~
$ sudo apt-get install ocl-icd-libopencl1

$ sudo apt-get install opencl-headers 

$ sudo apt-get install ocl-icd-opencl-dev
~~~~
For more information about getting started with the Vitis software platform, installation instructions, and complete details on the development flow, see Vitis Unified Software Platform Documentation: Application Acceleration Development [UG1393](https://docs.xilinx.com/r/2021.2-English/ug1393-vitis-application-acceleration/Getting-Started-with-Vitis)

Don't forget to place your license file under ~/.Xilinx directory

## Vitis Accel Examples ##
Download the Xilinx Vitis Accel Examples:
~~~
$ git clone https://github.com/Xilinx/Vitis_Accel_Examples.git
~~~

This repository contains examples to showcase various features of the Vitis tools and platforms.

The example that we are interested to run is mainly the **p2p_bandwidth** example:
~~~
$ cd Vitis_Accel_Examples/host/p2p_bandwidth/
~~~

First, you need to set the environment. Please specify the Vitis path and the XRT path.

In our case, we have to set by using:
~~~
$ source /tools/Xilinx/Vitis/2021.1/settings64.sh
$ source /opt/xilinx/xrt/setup.sh
~~~

Then you have to use the 'make' command:
~~~
$ make all TARGET=<sw_emu|hw_emu|hw> PLATFORM=<FPGA Platform>
~~~

In our case because we are using Vitis 2021.1 version, the exact command is: 
~~~
$ faketime '2021-12-31 12:00:00' make all TARGET=hw PLATFORM=xilinx_u2_gen3x4_xdma_gc_2_202110_1
~~~
> **Note:** If you use Vitis version 2022.1, you just need to use this command:
~~~
$ make all TARGET=hw PLATFORM=xilinx_u2_gen3x4_xdma_gc_2_202110_1
~~~

**Note**: In our server we use Ubuntu 18.04.06 and we have Linux kernel 5.4 version.

~~However, while the synthesis is successful, the creation of bitstream fails. We are still working on it...~~

Finally, if the 'make' command is successful (it takes approximately 1 hour), the application can be executed by:
~~~
$ ./p2p_bandwidth -x <bandwidth XCLBIN> -f ./data/sample.txt
~~~
> For <bandwidth XCLBIN> you have to give the path where the 'bandwidth.xclbin' file is located.

> In our case, this is **build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/bandwidth.xclbin**

> You can use either option -f which means data are going to be written in ./data/sample.txt or use option -p to transfer data between FPGA and SSD where the input path in our case is **/dev/nvme0n1**

The exact command that we use is:
~~~
$ ./p2p_bandwidth -x build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/bandwidth.xclbin -p /dev/nvme0n1

~~~


If you have any questions, please contact **Anthony Etim** (anthony.etim@yale.edu) or **Theodoros Trochatos** (theodoros.trochatos@yale.edu)
