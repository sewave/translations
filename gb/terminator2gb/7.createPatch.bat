@echo off
set T_FILENAME="TR_Terminator 2 - Judgment Day (UE) [!].gb"
set S_FILENAME="Terminator 2 - Judgment Day (UE) [!].gb"
set SCRIPTNAME="terminator2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
