@echo off
set T_FILENAME="TR_Taz-Mania (W) [!].bin"
set S_FILENAME="Taz-Mania (W) [!].bin"
set SCRIPTNAME="tazmaniasmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
