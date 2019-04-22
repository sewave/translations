@echo off
set T_FILENAME="Parodius da! (J) [T+ENG].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
