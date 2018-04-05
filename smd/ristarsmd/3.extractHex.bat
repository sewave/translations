@echo off
set T_FILENAME="TR_Ristar (UE) [!].gen"
set SCRIPTNAME="ristarsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
