@echo off
:boothome
cls
echo ^>Loading initial RamDisk device
goto boot
:boot
echo Booting from Poggersire DOS OpenCore kernel
echo.
startupscripts.bat
