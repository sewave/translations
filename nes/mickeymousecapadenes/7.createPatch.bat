@echo off
set T_FILENAME="TR_Mickey Mousecapade (U) [!].nes"
set S_FILENAME="Mickey Mousecapade (U) [!].nes"
set SCRIPTNAME="mickeymousecapadenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
