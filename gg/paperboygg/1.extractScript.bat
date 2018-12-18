@echo off
set T_FILENAME="Paperboy (U).gg"
set SCRIPTNAME="paperboygg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
