@echo off
set T_FILENAME="TR_Sagaia (U) [c][!].gen"
set S_FILENAME="Sagaia (U) [c][!].gen"
set SCRIPTNAME="sagaiasmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
