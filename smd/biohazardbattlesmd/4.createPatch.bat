@echo off
set T_FILENAME="TR_Bio-Hazard Battle (UE) [!].bin"
set S_FILENAME="Bio-Hazard Battle (UE) [!].bin"
set SCRIPTNAME="biohazardbattlesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
