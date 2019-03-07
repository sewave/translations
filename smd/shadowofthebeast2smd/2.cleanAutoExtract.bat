@echo off
set T_FILENAME="Shadow of the Beast 2 (UE) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
