@echo off
set T_FILENAME="WWF Wrestlemania Steel Cage Challenge (U) [!].sms"
set SCRIPTNAME="wwfwrestlemaniasteelcagechallengesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
