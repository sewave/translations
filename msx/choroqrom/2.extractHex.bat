@echo off
set T_FILENAME="TR_Choroq (1984) (Taito) (J).rom"
set SCRIPTNAME="choroqrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
