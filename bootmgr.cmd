@echo off
:BMHome
cls
echo OpenCore boot manager version 1.0
echo =================================
echo Choose what to boot:
echo 1. OpenCore kernel
echo 2. UEFI firmware settings
echo 3. OpenCore rescue mode
echo.
set /p choice=Make a choice from 1-3:
if %choice% == 1 goto KernelBoot
if %choice% == 2 goto UEFI
if %choice% == 3 cmd
:kernelboot
cls
cmd /k opencore_boot.cmd
:UEFI
cls
echo Poggersire Industries OpenCore UEFI
echo ====================================================================================================
fsutil fsinfo drives
echo.
echo No operating system has been loaded yet. You may hold down the power switch to reboot your computer.
echo.
pause
  
