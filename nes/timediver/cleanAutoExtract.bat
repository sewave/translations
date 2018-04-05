@echo off 
set T_FILENAME="Time Diver Eon Man (U) (Prototype).nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
