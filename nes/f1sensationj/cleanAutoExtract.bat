@echo off 
set T_FILENAME="F-1 Sensation (J).nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
