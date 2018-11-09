@echo off
set T_FILENAME="TR_Chuck Rock (U) [c][!].gen"
set S_FILENAME="Chuck Rock (U) [c][!].gen"
set SCRIPTNAME="chuckrocksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
