@echo off
set T_FILENAME="TR_R-Type (U) [!].gb"
set S_FILENAME="R-Type (U) [!].gb"
set SCRIPTNAME="rtypegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
