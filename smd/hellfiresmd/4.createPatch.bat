@echo off
set T_FILENAME="TR_Hellfire (U) [!].bin"
set S_FILENAME="Hellfire (U) [!].bin"
set SCRIPTNAME="hellfiresmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
