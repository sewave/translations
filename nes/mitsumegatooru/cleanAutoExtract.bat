@echo off 
set T_FILENAME="Mitsume ga Tooru (J) [T-Eng1.01_Toma].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
