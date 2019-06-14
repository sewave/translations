@echo off
set T_FILENAME="TR_Zool (U) [!].gb"
set S_FILENAME="Zool (U) [!].gb"
set SCRIPTNAME="zoolgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
