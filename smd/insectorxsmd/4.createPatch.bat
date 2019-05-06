@echo off
set T_FILENAME="TR_Insector X (U) [!].bin"
set S_FILENAME="Insector X (U) [!].bin"
set SCRIPTNAME="insectorxsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
