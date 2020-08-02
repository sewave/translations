@echo off
set T_FILENAME="TR_Generations Lost (UE) [!].bin"
set SCRIPTNAME="generationslostsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AE622:20,AEC06:20,DB476:20
pause
