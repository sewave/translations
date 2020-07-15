@echo off
set T_FILENAME="Marksman Shooting & Trap Shooting & Safari Hunt (Europe).sms"
set SCRIPTNAME="marksmanshootingtrapshootingsafarihuntsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
