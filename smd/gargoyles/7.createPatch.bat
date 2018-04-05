@echo off
set T_FILENAME="TR_Gargoyles (U) [!].bin"
set S_FILENAME="Gargoyles (U) [!].bin"
set SCRIPTNAME="gargoyles"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
