@echo off
set T_FILENAME="TR_Terminator, The (U) [!].gg"
set S_FILENAME="Terminator, The (U) [!].gg"
set SCRIPTNAME="terminatorgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
