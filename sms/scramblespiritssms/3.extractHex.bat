@echo off
set T_FILENAME="TR_Scramble Spirits (UE) [!].sms"
set SCRIPTNAME="scramblespiritssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FF40:20,1D7B6:220,2B5C0:400
pause
