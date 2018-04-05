@echo off 
set T_FILENAME="Mickey Mouse III - Yume Fuusen (J) [T+ENG].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
