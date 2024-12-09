@echo off
:boothome
echo ^>Loading initial RamDisk device
choice /c ONR /m "Press O to boot from OpenCore kernel or press N to boot from Network. Or press R to boot into rescue mode."
if %errorlevel% == 1 goto boot
if %errorlevel% == 2 goto netboot
if %errorlevel% == 3 goto rescue
:boot
echo Booting from Poggersire DOS OpenCore kernel
echo.
echo   Add commands that you can use to boot from your own batch file
echo   based OS here, if you want it to use the Poggersire DOS OpenCore
echo   kernel instead of using a custom made kernel.
echo.
pause
exit
:netboot
echo Starting iPXE over IP4
echo.
echo Downloading lightweight operating system
echo Booting lightweight operating system.
echo.
echo.
echo   Add commands that you can use to boot from a network based operating
echo   system here, if you want it to use the Poggersire DOS OpenCore kernel
echo   instead of using a custom made kernel.
exit
echo.
pause
exit
:rescue
echo.
echo Starting OpenCore rescue mode
echo.
echo Troubleshooting...
timeout 5 /nobreak >null
echo Fixing problems...
timeout 3 /nobreak >null
echo Rebooting PC...
timeout 1 /nobreak >null
del null
cls
goto boothome
