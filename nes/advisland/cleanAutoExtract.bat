@echo off 
set T_FILENAME="Hudson's Adventure Island (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
