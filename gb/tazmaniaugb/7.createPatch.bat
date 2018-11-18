@echo off
set T_FILENAME="TR_Taz-Mania (U) [!].gb"
set S_FILENAME="Taz-Mania (U) [!].gb"
set SCRIPTNAME="tazmaniaugb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
