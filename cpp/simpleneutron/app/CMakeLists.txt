file(GLOB SOURCES "src/*.cpp")
add_executable(helloworld ${SOURCES})
target_compile_features(helloworld PRIVATE cxx_std_17)

