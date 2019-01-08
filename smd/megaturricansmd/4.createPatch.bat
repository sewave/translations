@echo off
set T_FILENAME="TR_Mega Turrican (U) [!].bin"
set S_FILENAME="Mega Turrican (U) [!].bin"
set SCRIPTNAME="megaturricansmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
