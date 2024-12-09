@echo off
:boothome
echo ^>Loading initial RamDisk device
goto boot
:boot
echo Booting from Poggersire DOS OpenCore kernel
echo.
startupscripts.bat
echo.
echo   Add commands that you can use to boot from your own batch file
echo   based OS here, if you want it to use the Poggersire DOS OpenCore
echo   kernel instead of using a custom made kernel.
echo.
pause
exit
