@echo off
set T_FILENAME="TR_Castlevania - Legends (UE) [S][!].gb"
set S_FILENAME="Castlevania - Legends (UE) [S][!].gb"
set SCRIPTNAME="castlevanialegends"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
