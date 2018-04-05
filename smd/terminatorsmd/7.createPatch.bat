@echo off
set T_FILENAME="TR_Terminator, The (U) [!].bin"
set S_FILENAME="Terminator, The (U) [!].bin"
set SCRIPTNAME="terminatorsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
