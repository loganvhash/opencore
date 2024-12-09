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
echo.
echo Add your own commands to run in the Preboot Execution Enviorment into the StartupScripts.bat file. This is only an example as the
echo commands in here will first print this message out and wait for user input.
echo.
echo You can add commands used for booting a operating system or others.
echo.
pause
