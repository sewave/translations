@echo off
set T_FILENAME="TR_Trouble Shooter (U) [!].bin"
set SCRIPTNAME="troubleshooter"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
