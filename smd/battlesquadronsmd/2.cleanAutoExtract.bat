@echo off
set T_FILENAME="Battle Squadron (UE) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
