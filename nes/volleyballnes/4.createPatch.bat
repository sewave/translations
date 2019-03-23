@echo off
set T_FILENAME="TR_Volleyball (UE) [!].nes"
set S_FILENAME="Volleyball (UE) [!].nes"
set SCRIPTNAME="volleyballnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
