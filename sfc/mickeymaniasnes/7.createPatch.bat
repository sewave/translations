@echo off
set T_FILENAME="TR_Mickey Mania (U) [!].smc"
set S_FILENAME="Mickey Mania (U) [!].smc"
set SCRIPTNAME="mickeymaniasnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
