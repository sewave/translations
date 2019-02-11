@echo off
set T_FILENAME="TR_Turrican (U) [c][!].gen"
set S_FILENAME="Turrican (U) [c][!].gen"
set SCRIPTNAME="turricansmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
