@echo off
set T_FILENAME="TR_Wario Land II (USA, Europe) (SGB Enhanced).gbc"
set SCRIPTNAME="wariolandiigbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
