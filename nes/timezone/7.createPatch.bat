@echo off
set T_FILENAME="Time Zone (J) [T+ESP].nes"
set S_FILENAME="Time Zone (J) [!].nes"
set SCRIPTNAME="timezone"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
