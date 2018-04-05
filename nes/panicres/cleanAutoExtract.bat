@echo off 
set T_FILENAME="Panic Restaurant (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.args
pause 
