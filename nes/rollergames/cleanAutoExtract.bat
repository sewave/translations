@echo off 
set T_FILENAME="Rollergames (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
