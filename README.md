# alder-lake-shlx-anomaly
Example code to test the Alder Lake shlx instruction anomaly on Windows (takes 3 CPU cycles instead of 1) 

## How to Compile

Requirements:
- NASM
- Build Tools for Visual Studio 2022

## Steps

```
nasm -f win64 -o shlx.obj shlx.asm
```

```
link shlx.obj /subsystem:console /entry:main /out:shlx.exe kernel32.lib legacy_std
io_definitions.lib msvcrt.lib
```

## Source
https://tavianator.com/2025/shlx.html
