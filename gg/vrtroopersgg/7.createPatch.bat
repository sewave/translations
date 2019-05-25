@echo off
set T_FILENAME="TR_VR Troopers (U) [!].gg"
set S_FILENAME="VR Troopers (U) [!].gg"
set SCRIPTNAME="vrtroopersgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
