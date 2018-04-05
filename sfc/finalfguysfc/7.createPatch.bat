@echo off
set T_FILENAME="TR_Final Fight Guy (U).smc"
set S_FILENAME="Final Fight Guy (U).smc"
set SCRIPTNAME="finalfguysfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
