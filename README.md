# cern-root-compile
Makefile for C++ Projects which use Cern Root Libraries

If you get errors like "root-config" no such file in directory, try this:

type in in terminal

this will open a bash hidden file
```
gedit ~/.bashrc 
```
add this line at the end of bash file
```
source /path to root/bin/thisroot.sh 
```

replace path to root with full path to your root dir where you installed it.

For further information on how to install and setup Root watch Dai xination's step by step guide [video](https://www.youtube.com/watch?v=LfSFGkkBT-k)

And if it crashes after compiling sometimes probably you did not install Root compiling from Root Source so there can be some missing libraries in your system so you might reinstall it from source.

For further info please refer to Cern Root Forums. 
