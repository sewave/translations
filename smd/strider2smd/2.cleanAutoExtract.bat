@echo off
set T_FILENAME="Journey From Darkness - Strider Returns (U) [c][!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
