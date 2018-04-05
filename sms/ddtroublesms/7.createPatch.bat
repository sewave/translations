@echo off
set T_FILENAME="TR_Deep Duck Trouble (E) [!].sms"
set S_FILENAME="Deep Duck Trouble (E) [!].sms"
set SCRIPTNAME="ddtroublesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
