file(GLOB SOURCES "logger/src/*.cpp" "dma/src/*.cpp" "memorycontrol/src/*.cpp" "gpio/src/*.cpp")
add_library(components STATIC ${SOURCES})
target_link_libraries(components external)
target_include_directories(components PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
