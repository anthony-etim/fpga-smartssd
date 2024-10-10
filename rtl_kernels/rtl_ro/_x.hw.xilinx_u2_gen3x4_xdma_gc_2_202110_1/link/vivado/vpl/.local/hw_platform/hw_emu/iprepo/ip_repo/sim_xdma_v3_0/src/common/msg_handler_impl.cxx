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
 

#include "msg_handler_impl.h"
#include <iostream>
  namespace emulation {

    msg_def* msg_handler_impl::register_id(std::string &id, SEVERITY seviority)
    {
      msg_def* newMsg   = new msg_def;

      newMsg->mSeviority   = seviority;
      newMsg->mAction      = UNSPECIFIED;
      newMsg->mLimit       = 0;
      newMsg->mLimitMask   = 0;
      newMsg->mCallCount   = 0;
      newMsg->mSuppress    = false;

      mRegisteredMsgs[id]  = newMsg; 
      return newMsg;
    }

    msg_handler_impl::msg_handler_impl()
    {
      
      mSevActions[INFO]      = UNSPECIFIED;
      mSevActions[WARNING]   = UNSPECIFIED;
      mSevActions[ERROR]     = UNSPECIFIED;
      mSevActions[FATAL]     = UNSPECIFIED;

      mDefaultSevActions[INFO]      = (LOG | DISPLAY);
      mDefaultSevActions[WARNING]   = (LOG | DISPLAY);
      mDefaultSevActions[ERROR]     = (LOG | DISPLAY | STOP);
      mDefaultSevActions[FATAL]     = (LOG | DISPLAY | STOP);

      mSevLimit[INFO]    = 0;
      mSevLimit[WARNING] = 0;
      mSevLimit[ERROR]   = 0;
      mSevLimit[FATAL]   = 0;

      mSevCallCount[INFO]    = 0;
      mSevCallCount[WARNING] = 0;
      mSevCallCount[ERROR]   = 0;
      mSevCallCount[FATAL]   = 0;

      mVerbosityLevel = MEDIUM;

      mMakeWarningsErrors = false;

      mSuppress[INFO]    = false;
      mSuppress[WARNING] = false;
      mSuppress[ERROR]   = false;
      mSuppress[FATAL]   = false;
      mIsLiveDisplayEnable= false;

    }
    msg_handler_impl::~msg_handler_impl()
    {
    	if(mIsLiveDisplayEnable) mLiveDisplayLog.close();
    }
    msg_def * msg_handler_impl::mdlookup(std::string &id)
    {
      auto itr = mRegisteredMsgs.find(id);
      if(itr != mRegisteredMsgs.end())
        return (*itr).second;

      return 0;
    }
    void msg_handler_impl::set_live_display_log_file(std::string& filename) {
	    if(mLiveDisplayLog.is_open()) {
		    std::cout<<"--Log file "<<filename<<" already open "<<std::endl;
		    return;
	    } else {
		    mLiveDisplayLog.open(filename.c_str(),std::ofstream::out|std::ofstream::app);
		    if(!mLiveDisplayLog.is_open()) {
			    std::cout<<"--Cannot open log file "<<filename<<std::endl;
		    } else {
			    mIsLiveDisplayEnable=true;
		    }
	    }
    }
    bool msg_handler_impl::is_suppressed(std::string &id)
    {
      auto it = mSuppressIds.find(id);
      if(it != mSuppressIds.end())
      {
        return (*it).second;
      }
      return false;
    }

    bool msg_handler_impl::is_suppressed(SEVERITY severity_)
    {
      return mSuppress[severity_];
    }

    unsigned int msg_handler_impl::get_count(SEVERITY severity_) 
    { 
      return mSevCallCount[severity_]; 
    } 

    unsigned int msg_handler_impl::get_count(std::string &id) 
    { 
      msg_def * md = mdlookup(id); 

      if ( !md )
        return 0;

      return md->mCallCount;
    } 

    actions msg_handler_impl::execute(msg_def* md, SEVERITY& severity_)
    {
      if(mMakeWarningsErrors && severity_ == WARNING)
        severity_ = ERROR;

      actions actions = md->mAction;

      if( UNSPECIFIED == actions )
        actions = mSevActions[severity_];

      if( UNSPECIFIED == actions )
        actions = mDefaultSevActions[severity_];

      unsigned int limit = 0;
      unsigned int call_count = 0;

      if( md->mCallCount < UINT_MAX )
      {
        md->mCallCount++;
      }

      if( mSevCallCount[severity_] < UINT_MAX )
      {
        mSevCallCount[severity_]++;
      }

      if ( md->mLimitMask & 1 )
      {
        limit = md->mLimit ;
        call_count = md->mCallCount;
      }

      if ( limit  == 0)
      {
        limit = mSevLimit[severity_];
        call_count = mSevCallCount[severity_];
      }

      if ( limit != 0 && limit != UINT_MAX)
      {
        if ( call_count >= limit )
          actions |= STOP;
      }
      return actions;
    }

    void msg_handler_impl::construct_msg(SEVERITY severity_, std::string &id, msg_def* md, const actions& actions, const char* msg)
    {
      if(!msg)
        return;

      if(is_suppressed(id) || is_suppressed(severity_))
      {
        return;
      }
      static const char * severity_names[] = 
      {
        "INFO", "WARNING", "ERROR", "FATAL"
      };

      std::stringstream finalMessage;
      finalMessage << severity_names[severity_];
      finalMessage << ": [SDx-EM "<<id <<"] ";

      if( msg )
      {
        finalMessage << msg;
      }
      if( actions & LIVE_DISPLAY)  {
    	  if(mIsLiveDisplayEnable) { 
          mLiveDisplayLog<<finalMessage.str()<<std::endl;
        }
      }
      if( actions & DISPLAY )
      {
        mDisplayMsgs <<finalMessage.str()<<std::endl;
      }

      if( (actions & LOG) )
      {
        mLogMsgs << finalMessage.str() << std::endl;
      }

      if (actions & STOP)
      {
        mStopMsgs << finalMessage.str() << std::endl;
      }
    }


  }


