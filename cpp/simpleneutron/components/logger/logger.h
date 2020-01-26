#pragma once

#include <iostream>
#include <sstream>
#include <mutex>

#define LogErr ThreadStream(std::cerr)
#define LogOut ThreadStream(std::cout)

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
