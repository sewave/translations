@echo off
set T_FILENAME="TR_Virtua Fighter 2 (UE) [!].gen"
set SCRIPTNAME="virtuafighter2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
