@echo off 
set T_FILENAME="El Viento Enhancement by MIJET (Hack).bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
