@echo off
set T_FILENAME="OutRun (JU).gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
