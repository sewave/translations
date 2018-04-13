@echo off 
set T_FILENAME="Armadillo (J) [T+Eng_vice].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
