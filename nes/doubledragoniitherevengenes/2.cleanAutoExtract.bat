@echo off
set T_FILENAME="Double Dragon II - The Revenge (U) (PRG1) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
