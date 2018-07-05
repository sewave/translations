@echo off
set T_FILENAME="Super Mario Land (W) (V1.1) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
