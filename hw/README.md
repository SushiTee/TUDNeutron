# Hardware

This subdirectory contains the hardware of the project. The subdirectory *pcb* contains the circuit boards used. The other two subdirectories hold the FPGA hardware for the Zedboard for *SimpleNeutron* and *ADCNeutron*.

## PCB

There are three *.zip* files containing *gerber* files. The boards may be ordered using them if needed.

## FPGA Hardware

To use the hardware you need to generate a bit stream out of the provided source of the hardware. Additionally to this there is also the *devicetree* which will be needed to let Linux know what the hardware implements.

### Build bit stream

Open Vivado [1] and do the following and do *Window -> Tcl Console*.

Once the Tcl console is open at the bottom of Vivado *cd* to into the correct directory. The example assumes the project is into the folder *~/TUDNeutron* and *SimpleNeutron* is to be build. For *ADCNeutron* it works the same way.

```
cd ~/TUDNeutron/hw/SimpleNeutron
```

Once in the correct directory, simply *source* the *build.tcl* and everything is starting to load.

```
source build.tcl
```

Once everything is loaded you can simply generate the bit stream. After it is done you can export the hardware including the bit stream.

### Devicetree

The *devicetree* describes which hardware is there so Linux knows what to do with it. The devicetree can be found in the subdirectory *devicetree*. The file needs to be copied to *project-spec/meta-user/recipes-bsp/device-\linebreak tree/files/system-user.dtsi* after configuring *Petalinux* [2]

-------

[1] [Xilinx Vivado](https://www.xilinx.com/products/design-tools/vivado.html)

[2] [Petalinux](https://www.xilinx.com/products/design-tools/embedded-software/petalinux-sdk.html)
