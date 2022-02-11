@echo off
set T_FILENAME="TR_WWF Wrestlemania Challenge (USA).nes"
set SCRIPTNAME="wwfwrestlemaniachallengenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10177:80
pause
