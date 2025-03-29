@echo off
set T_FILENAME="TR_Tintin - Prisoners of the Sun (Europe) (En,Fr,De).gb"
set SCRIPTNAME="tintinprisonersofthesungb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
