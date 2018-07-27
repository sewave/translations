@echo off
set T_FILENAME="Gain Ground (UE) [c][!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
