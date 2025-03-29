@echo off
set T_FILENAME="TR_Tintin - Prisoners of the Sun (Europe) (En,Fr,De).gbc"
set SCRIPTNAME="tintinprisonersofthesungbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4E278:40
pause
