@echo off
:boothome
cls
echo ^>Loading initial RamDisk device
goto boot
:boot
cls
color 80
echo Poggersire DOS OpenCore Kernel
echo.
OpenRuntime.cmd
echo.
echo Kernel started from folder %cd%
echo EFI system partition located at /EFI.
echo Date and time is %date% %time%
echo.
echo.
startupscripts.bat
