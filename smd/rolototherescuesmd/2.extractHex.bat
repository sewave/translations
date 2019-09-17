@echo off
set T_FILENAME="TR_Rolo to the Rescue (UE) [!].bin"
set SCRIPTNAME="rolototherescuesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
