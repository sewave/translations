@echo off
set T_FILENAME="TR_Spawn (U) [!].smc"
set S_FILENAME="Spawn (U) [!].smc"
set SCRIPTNAME="spawnsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
