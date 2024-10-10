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

/*****************************************************************************

msg_handler_defines.h
Author:chvamshi

 *****************************************************************************/

#include <map>
#include <climits>
#include <string>
#include <sstream>

#ifndef msg_handler_defines_H
#define msg_handler_defines_H
#ifdef __linux__ 
#define EM_IMPORT
#define EM_EXPORT
#else
#define EM_IMPORT   __declspec( dllimport )
#define EM_EXPORT   __declspec( dllexport )
#endif

namespace emulation {

 typedef unsigned actions;

  enum SEVERITY {
    INFO = 0,
    WARNING,
    CRITICAL_WARNING,
    ERROR,
    FATAL,
    MAX_SEVIOURITY
  };

  enum VERBOSITY { 
    NONE   = 0, 
    LOW    = 100, 
    MEDIUM = 200, 
    HIGH   = 300,
    FULL   = 400, 
    DEBUG  = 500
  };

  enum ACTION {
    UNSPECIFIED  = 0x0000,
    DO_NOTHING   = 0x0001,
    LOG          = 0x0002,
    DISPLAY      = 0x0004,
    STOP         = 0x0010,
    LIVE_DISPLAY = 0x0011
  };


  struct EM_EXPORT msg_def
  {
    SEVERITY      mSeviority;
    actions       mAction;
    unsigned      mLimit;
    unsigned      mLimitMask;
    unsigned      mCallCount;
    bool          mSuppress;
  };

}
#endif


