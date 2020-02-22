@echo off
set T_FILENAME="TR_Punisher, The (USA).nes"
set SCRIPTNAME="punisherthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2EB50:40,23F10:40,20F30:10,2CF10:90,2C290:20,2DB90:200
pause
