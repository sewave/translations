@echo off
set T_FILENAME="Super_Imposter_Bros.gb"
set SCRIPTNAME="superimposterbrosgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
