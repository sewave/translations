@echo off
set T_FILENAME="TR_Journey From Darkness - Strider Returns (U) [c][!].bin"
set S_FILENAME="Journey From Darkness - Strider Returns (U) [c][!].bin"
set SCRIPTNAME="strider2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
