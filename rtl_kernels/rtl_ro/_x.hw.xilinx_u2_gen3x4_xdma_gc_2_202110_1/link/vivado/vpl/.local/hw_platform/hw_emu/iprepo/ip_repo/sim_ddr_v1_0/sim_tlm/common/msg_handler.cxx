// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright(C) 2013 - 2018 by Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
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
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

#include <cstdio>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include "msg_handler.h"
#include "msg_handler_impl.h"


namespace emulation {

  msg_handler_impl* msg_handler::mImpl = new msg_handler_impl;

  void msg_handler::suppress(std::string id, bool suppress_)
  {
    mImpl->mSuppressIds[id] = suppress_;
  }

  void msg_handler::suppress(SEVERITY severity_, bool suppress_)
  {
    mImpl->mSuppress[severity_] = suppress_;
  }

  void msg_handler::suppress(bool suppress_)
  {
    for(unsigned int i = INFO; i< MAX_SEVIOURITY ;i++)
    {
      mImpl->mSuppress[i] = suppress_;
    }
  }

  void msg_handler::stop_after(SEVERITY severity_, int limit)
  {
    mImpl->mSevLimit[severity_] = limit < 0 ? UINT_MAX: (unsigned) limit;
  }

  void msg_handler::stop_after(std::string id, int limit)
  {
    msg_def * md = mImpl->mdlookup(id);

    if ( !md )
      return;

    if ( limit > 0 )
    {
      md->mLimitMask |= 1;
      md->mLimit = limit;
    }
  }

  void msg_handler::set_actions(SEVERITY severity_, actions actions)
  {
    mImpl->mSevActions[severity_] = actions;
  }

  void msg_handler::set_actions(std::string id, actions actions)
  {
    msg_def * md = mImpl->mdlookup(id);

    if ( !md )
      return;

    md->mAction= actions;
  }

  void msg_handler::make_warnings_errors(bool convertWarningsToError) 
  { 
    mImpl->mMakeWarningsErrors = convertWarningsToError;
  }

  void msg_handler::set_verbosity_level( VERBOSITY level ) 
  {
    mImpl->mVerbosityLevel = level;
  }


  void msg_handler::report( std::string id, const char* msg, SEVERITY severity_, VERBOSITY verbosity_)
  {
    msg_def * md = mImpl->mdlookup(id);

    if ( !md )
    {
      md = mImpl->register_id(id,severity_);
    }
    if(!md)
      return;

    SEVERITY severity = md->mSeviority;
    if ( (severity == INFO) && (verbosity_ > mImpl->mVerbosityLevel) ) 
      return;

    actions actions = mImpl->execute(md, severity_);

    mImpl->construct_msg(severity_ , id, md, actions, msg);
  }

  void msg_handler::get_display_msgs(std::string& displayMsgs)
  {
    displayMsgs = mImpl->mDisplayMsgs.str();
    mImpl->mDisplayMsgs.str("");
  }
  
  void msg_handler::get_log_msgs(std::string& logMsgs)
  {
    logMsgs = mImpl->mLogMsgs.str();
    mImpl->mLogMsgs.str("");
  }
  
  void msg_handler::get_stop_msgs(std::string& stopMsgs)
  {
    stopMsgs = mImpl->mStopMsgs.str();
    mImpl->mStopMsgs.str("");
  }
  void msg_handler::set_live_display_log_file(std::string& file_name) {
	  mImpl->set_live_display_log_file(file_name);
  }

 }


