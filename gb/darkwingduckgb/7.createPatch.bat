@echo off
set T_FILENAME="TR_Darkwing Duck (U) [!].gb"
set S_FILENAME="Darkwing Duck (U) [!].gb"
set SCRIPTNAME="darkwingduckgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
