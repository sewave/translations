@echo off
set T_FILENAME="Soldiers of Fortune (U) [c][!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
