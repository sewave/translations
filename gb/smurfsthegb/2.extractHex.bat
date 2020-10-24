@echo off
set T_FILENAME="TR_Smurfs, The (USA, Europe) (En,Fr,De) (Rev A) (SGB Enhanced).gb"
set SCRIPTNAME="smurfsthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
