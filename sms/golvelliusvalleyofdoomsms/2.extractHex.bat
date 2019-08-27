@echo off
set T_FILENAME="TR_Golvellius - Valley of Doom (UE) [!].sms"
set SCRIPTNAME="golvelliusvalleyofdoomsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
