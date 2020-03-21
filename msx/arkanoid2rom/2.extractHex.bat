@echo off
set T_FILENAME="TR_Arkanoid 2 (1987) (Taito) (J).rom"
set SCRIPTNAME="arkanoid2rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
