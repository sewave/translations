@echo off
set T_FILENAME="Vixen 357 (J) [T+ENG].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
