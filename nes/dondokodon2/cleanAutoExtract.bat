@echo off 
set T_FILENAME="Don Doko Don 2 (J) [T+ENG].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.args
pause 
