#ifndef SMARTFILES_IPC_HPP
#define SMARTFILES_IPC_HPP

#include <string>
#include <vector>

#include <boost/thread.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/enable_shared_from_this.hpp>

/**
 * This class implements loads a new process for SmartFiles.
 */
class smartfiles_ipc : public boost::enable_shared_from_this<smartfiles_ipc>
{
    public:
    
        /**
         * Constructor
         * @param argc Argument count.
         * @param argv Argument variables.
         */
        smartfiles_ipc();
        
        /**
         * Destructor
         */
        ~smartfiles_ipc();
        
        /**
         * Starts the SmartFiles process.
         */
        void start();
        
        /**
         * Stops the SmartFiles process.
         */
        void stop();
        
        /**
         * The current state of the ipc interface.
         */
        unsigned int state();
        
    private:
    
        /**
         * The SmartFiles process is run, monitored and control via this 
         * thread.
         */
        void thread();
    
        /**
         * The current state of the ipc interface.
         */
        enum state
        {
            stopped = 0,
            starting = 1,
            started = 2,
            stopping = 3
        };
        
        unsigned int m_state;
        
        /**
         * Sets the current state of the ipc interface.
         */
        bool set_state(unsigned int val);
        
    protected:
        
        /**
         * The executable.
         */
        std::string exec_;
        
        /**
         * The arguments.
         */
        std::vector<std::string> args_;
        
        /**
         * The SmartFiles process is run, monitored and controled via this 
         * thread.
         */
        boost::shared_ptr<boost::thread> thread_;
        
        /**
         * Used to trigger termination.
         */
        mutable bool terminate_;
        
        /**
         * Condition varbiable used to block the runner thread.
         */
        boost::condition_variable condition_variable_;
        
        /**
         * Mutex used in conjunction with condition variable.
         */
        mutable boost::mutex mutex_;
};

// ...
typedef smartfiles_ipc smartfiles_ipc_t;

#endif // SMARTFILES_IPC_HPP
