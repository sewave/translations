@echo off
set T_FILENAME="TR_Legend of Prince Valiant, The (Europe) (En,Fr,De).gb"
set SCRIPTNAME="legendofprincevaliantthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C8A0:60
pause
