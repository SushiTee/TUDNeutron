# Client and Server

Both the server and the client are written mainly in C++. The client is build using Qt Creator [1] to be built and the server uses CMAKE [2].

## Building the client

Simply start Qt Creator and load the *.pro* file of the client. After it configure the project (which is straight forward) and press the *Play* button.

## Building the server

The server comes with two scripts. One for building the release version and one for the debug version

* compile_release
* compile_debug

Before using one of the scripts a little bit of configuration must be done. When being in one of the project folders run the following command to copy the example configuration:

```
cp config.cmake.example/ config/config.cmake
```

Once that is done open it and set everything to fit your need. It is pretty straight forward.

Be sure your cross compiler is ready. One can be found here: [gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf.tar.xz](https://developer.arm.com/-/media/Files/downloads/gnu-a/8.3-2019.03/binrel/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf.tar.xz?revision=e09a1c45-0ed3-4a8e-b06b-db3978fd8d56&la=en&hash=93ED4444B8B3A812B893373B490B90BBB28FD2E3)

-------------

[1] [Qt](https://www.qt.io/download)

[2] [CMAKE](https://cmake.org/)
