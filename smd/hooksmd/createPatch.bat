@echo off 
set T_FILENAME="TR_Hook (U) [c][!].bin"
set S_FILENAME="Hook (U) [c][!].bin"
set SCRIPTNAME="hooksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
