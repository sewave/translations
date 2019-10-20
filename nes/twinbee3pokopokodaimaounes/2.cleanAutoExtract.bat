@echo off
set T_FILENAME="TwinBee 3 - Poko Poko Dai Maou (J) [T+Eng1.02_Demiforce].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
