@echo off
set T_FILENAME="TR_Warlock (UE) [!].gen"
set SCRIPTNAME="warlocksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
