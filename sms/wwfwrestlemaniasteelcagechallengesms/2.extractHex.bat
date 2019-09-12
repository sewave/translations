@echo off
set T_FILENAME="TR_WWF Wrestlemania Steel Cage Challenge (U) [!].sms"
set SCRIPTNAME="wwfwrestlemaniasteelcagechallengesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
