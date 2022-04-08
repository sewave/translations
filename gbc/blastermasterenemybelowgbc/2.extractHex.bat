@echo off
set T_FILENAME="TR_Blaster Master - Enemy Below (USA, Europe) (SGB Enhanced).gbc"
set SCRIPTNAME="blastermasterenemybelowgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
