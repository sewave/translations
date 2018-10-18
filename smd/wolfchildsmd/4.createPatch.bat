@echo off
set T_FILENAME="TR_Wolf Child (U) [c][!].gen"
set S_FILENAME="Wolf Child (U) [c][!].gen"
set SCRIPTNAME="wolfchildsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
