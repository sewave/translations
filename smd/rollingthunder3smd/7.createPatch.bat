@echo off
set T_FILENAME="TR_Rolling Thunder 3 (U) [c][!].bin"
set S_FILENAME="Rolling Thunder 3 (U) [c][!].bin"
set SCRIPTNAME="rollingthunder3smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
