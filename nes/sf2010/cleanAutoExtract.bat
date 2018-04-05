@echo off 
set T_FILENAME="Street Fighter 2010 - The Final Fight (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
