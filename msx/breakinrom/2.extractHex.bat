@echo off
set T_FILENAME="TR_Break In (1987) (Jaleco) (J).rom"
set SCRIPTNAME="breakinrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 98D8:20,9C88:20,9730:8
pause
