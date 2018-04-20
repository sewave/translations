@echo off
set T_FILENAME="Rolling Thunder 2 (U) [c][!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
