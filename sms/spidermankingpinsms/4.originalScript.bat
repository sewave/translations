@echo off
set T_FILENAME="Spider-Man vs. the Kingpin (UE) [!].sms"
set SCRIPTNAME="spidermankingpinsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
