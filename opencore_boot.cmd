@echo off
:boothome
echo ^>Loading initial RamDisk device
choice /c OR /m "Press O to boot from OpenCore kernel or press R to boot into rescue mode."
if %errorlevel% == 1 goto boot
if %errorlevel% == 2 goto rescue
:boot
echo Booting from Poggersire DOS OpenCore kernel
echo.
echo   Add commands that you can use to boot from your own batch file
echo   based OS here, if you want it to use the Poggersire DOS OpenCore
echo   kernel instead of using a custom made kernel.
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
