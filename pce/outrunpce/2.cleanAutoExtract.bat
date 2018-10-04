@echo off
set T_FILENAME="OutRun (J).pce"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
