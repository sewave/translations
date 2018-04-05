@echo off
set T_FILENAME="Castlevania - Legends (UE) [S][!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
