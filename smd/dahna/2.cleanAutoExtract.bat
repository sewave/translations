@echo off
set T_FILENAME="Dahna - Megami Tanjou (J) [T+ENG].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
