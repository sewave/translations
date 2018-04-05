@echo off
set T_FILENAME="TR_Spider-Man vs. the Kingpin (UE) [!].sms"
set S_FILENAME="Spider-Man vs. the Kingpin (UE) [!].sms"
set SCRIPTNAME="spidermankingpinsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
