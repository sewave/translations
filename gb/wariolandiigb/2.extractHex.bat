@echo off
set T_FILENAME="TR_Wario Land II (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="wariolandiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
