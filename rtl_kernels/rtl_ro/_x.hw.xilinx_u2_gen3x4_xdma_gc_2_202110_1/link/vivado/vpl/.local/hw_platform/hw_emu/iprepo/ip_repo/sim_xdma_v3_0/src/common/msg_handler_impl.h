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
 

/*****************************************************************************

msg_handler_impl.h
Author:chvamshi

 *****************************************************************************/

#include "msg_handler_defines.h"
#include <fstream>
#ifndef msg_handler_impl_H
#define msg_handler_impl_H
namespace emulation {
  class EM_EXPORT msg_handler_impl
  {
    public:

      msg_handler_impl();
      ~msg_handler_impl();
      
      msg_def* register_id(std::string &id, SEVERITY );

      bool is_warning_became_errors(){ return mMakeWarningsErrors; }

      int get_verbosity_level() {return mVerbosityLevel;}

      bool is_suppressed(std::string &id);
      bool is_suppressed(SEVERITY );

      unsigned int get_count(SEVERITY );
      unsigned int get_count(std::string &id);

      actions execute(msg_def*, SEVERITY&);
      
      msg_def* mdlookup(std::string &id);

      void construct_msg(SEVERITY severity_, std::string &id, msg_def* md, const actions& actions, const char* msg);
      void set_live_display_log_file(std::string&);


      std::map<std::string,msg_def*>  mRegisteredMsgs;
      actions                         mSevActions[MAX_SEVIOURITY];
      actions                         mDefaultSevActions[MAX_SEVIOURITY];
      unsigned                        mSevLimit[MAX_SEVIOURITY];
      unsigned                        mSevCallCount[MAX_SEVIOURITY];
      bool                            mSuppress[MAX_SEVIOURITY];
      std::map<std::string,bool>      mSuppressIds;
      VERBOSITY                       mVerbosityLevel;
      bool                            mMakeWarningsErrors;
      std::stringstream               mDisplayMsgs;
      std::stringstream               mLogMsgs;
      std::stringstream               mStopMsgs;
      std::ofstream                   mLiveDisplayLog;
      bool                            mIsLiveDisplayEnable;
  };
}
#endif


