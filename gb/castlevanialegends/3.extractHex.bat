@echo off
set T_FILENAME="TR_Castlevania - Legends (UE) [S][!].gb"
set SCRIPTNAME="castlevanialegends"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2D001-2D010,293C4-29463
pause
