@echo off
set T_FILENAME="TR_Door Door (J) [!].nes"
set S_FILENAME="Door Door (J) [!].nes"
set SCRIPTNAME="doordoornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
