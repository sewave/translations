@echo off
set T_FILENAME="Mad City (J) [T+ENG].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
