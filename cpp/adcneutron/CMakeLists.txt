cmake_minimum_required(VERSION 3.11...3.16)

# Project name and a few useful settings. Other commands can pick up the results
project(ADCNeutron
    VERSION 0.1
    DESCRIPTION "ADCNeutron project"
    LANGUAGES CXX)

# Only do these if this is the main project, and not if it is included through add_subdirectory
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    # Let's ensure -std=c++xx instead of -std=g++xx
    set(CMAKE_CXX_EXTENSIONS OFF)
    if(CMAKE_BUILD_TYPE STREQUAL "Debug")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D DEBUG -std=c++17 -pthread -Wall")
    else()
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread -Wall")
    endif()

    # Let's nicely support folders in IDE's
    set_property(GLOBAL PROPERTY USE_FOLDERS ON)

    # include config
    if(NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/config/config.cmake")
        message(FATAL_ERROR "config is not present!")
    else()
        include(${CMAKE_CURRENT_SOURCE_DIR}/config/config.cmake)
    endif()
endif()

# The executable code is here
add_subdirectory(external)
add_subdirectory(components)
add_subdirectory(app)
