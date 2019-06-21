@echo off
set T_FILENAME="TR_Terminator 2 - The Arcade Game (E) [!].sms"
set SCRIPTNAME="terminator2arcadesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
