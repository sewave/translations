@echo off
set T_FILENAME="Goofy's Hysterical History Tour (USA).md"
set SCRIPTNAME="goofyshystericalhistorytoursmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
