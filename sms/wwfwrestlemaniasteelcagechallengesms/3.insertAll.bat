@echo off
set T_FILENAME="TR_WWF Wrestlemania Steel Cage Challenge (U) [!].sms"
set S_FILENAME="WWF Wrestlemania Steel Cage Challenge (U) [!].sms"
set SCRIPTNAME="wwfwrestlemaniasteelcagechallengesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
