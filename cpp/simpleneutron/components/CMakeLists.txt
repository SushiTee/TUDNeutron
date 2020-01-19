file(GLOB SOURCES "dma/src/*.cpp" "memorycontrol/src/*.cpp" "gpio/src/*.cpp")
add_library(components STATIC ${SOURCES})
target_include_directories(components PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
