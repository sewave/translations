@echo off
set T_FILENAME="TR_Castlevania III - Dracula's Curse (USA).nes"
set SCRIPTNAME="castlevaniaiiidraculascursenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5CEF0:20,504F0:20,507A0:30,5BD80:40,5BDE0:40,5BFB0:40,4DDB0:20,4DF60:10
pause
