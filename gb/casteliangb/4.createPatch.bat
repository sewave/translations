@echo off
set T_FILENAME="TR_Castelian (U) [!].gb"
set S_FILENAME="Castelian (U) [!].gb"
set SCRIPTNAME="casteliangb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
