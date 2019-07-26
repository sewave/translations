@echo off
set T_FILENAME="TR_Predator 2 (UE) [!].bin"
set SCRIPTNAME="predator2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
