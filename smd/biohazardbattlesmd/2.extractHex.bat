@echo off
set T_FILENAME="TR_Bio-Hazard Battle (UE) [!].bin"
set SCRIPTNAME="biohazardbattlesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
