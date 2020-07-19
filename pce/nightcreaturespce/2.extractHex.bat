@echo off
set T_FILENAME="TR_Night Creatures (USA).pce"
set SCRIPTNAME="nightcreaturespce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14600:80,1F6C0:100,64E80:80
pause
