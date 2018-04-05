@echo off 
set T_FILENAME="Mafat Conspiracy - Golgo 13 (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
