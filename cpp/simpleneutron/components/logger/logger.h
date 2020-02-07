#pragma once

#include <iostream>
#include <sstream>
#include <mutex>

#define LogErr ThreadStream(std::cerr)
// don't log non errors in release mode
#ifdef DEBUG
#define LogOut ThreadStream(std::cout)
#else
#define LogOut false && ThreadStream(std::cout)
#endif

/**
 * Thread-safe std::ostream class.
 *
 * Usage:
 *    tout << "Hello world!" << std::endl;
 *    terr << "Hello world!" << std::endl;
 */
class ThreadStream : public std::ostringstream
{
    public:
        explicit ThreadStream(std::ostream& os);
        ~ThreadStream();

    private:
        static std::mutex _mutex_threadstream;
        std::ostream& os_;
};
