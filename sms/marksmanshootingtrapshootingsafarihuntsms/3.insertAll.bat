@echo off
set T_FILENAME="TR_Marksman Shooting & Trap Shooting & Safari Hunt (Europe).sms"
set S_FILENAME="Marksman Shooting & Trap Shooting & Safari Hunt (Europe).sms"
set SCRIPTNAME="marksmanshootingtrapshootingsafarihuntsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
