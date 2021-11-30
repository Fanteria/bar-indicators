# i3 bar hardware indicators

This project contains a few C++ utilities, which can be used in the i3wm bar. All utilities are print some hardware info as battery status, disc space and ram and CPU info. A more detailed description is below. These utilities are not dedicated only for i3, you can use them any time, you want that info.

In code is also hardcoded some icons from the awesome font. If you don't want those icons, feel free to delete them and recompile all utilities with Makefile. Also is possible to change the separator of numbers. This can be done by adding some strings as an argument after paths to files. The default separator is `/`.

##### battery

Print percentage of actual battery capacity, after that, is an indication of charging (_uparrop_) and discharging (_downarrow_) and icon of battery status. The icon of the battery has five states with step 25 %. The last state is for a full battery.

##### cpu

Print actual average, actual maximal and absolute maximal frequency in this order. Frequencies are in GHz. Maximal GHz is hardcoded because I'm lazy to find where I can find this value.

##### disc

Print used space of disk with given path and size of this disk. Data is printed in this order.

##### ram

Print available, free and size of RAM. As all, data is printed in this order.
