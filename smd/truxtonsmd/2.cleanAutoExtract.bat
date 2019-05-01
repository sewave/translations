@echo off
set T_FILENAME="Truxton (W) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
