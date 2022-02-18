@echo off
set T_FILENAME="TR_WWF Wrestlemania Steel Cage Challenge (USA).nes"
set SCRIPTNAME="wwfwrestlemaniasteelcagechallengenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5E3F0:20,5A8A0:20,56320:D0,57320:D0,58320:D0,59320:D0,5FF10:100
pause
