@echo off
set T_FILENAME="TR_Snake-It (1986) (Hal) (J).rom"
set SCRIPTNAME="snakeitrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
