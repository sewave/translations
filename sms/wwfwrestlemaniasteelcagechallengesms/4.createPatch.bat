@echo off
set T_FILENAME="TR_WWF Wrestlemania Steel Cage Challenge (U) [!].sms"
set S_FILENAME="WWF Wrestlemania Steel Cage Challenge (U) [!].sms"
set SCRIPTNAME="wwfwrestlemaniasteelcagechallengesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
