@echo off
set T_FILENAME="TR_Top Roller (1984) (Jaleco) (J).rom"
set SCRIPTNAME="toprollerrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
