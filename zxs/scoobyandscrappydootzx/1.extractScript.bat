@echo off
set T_FILENAME="Scooby And Scrappy Doo.tzx"
set SCRIPTNAME="scoobyandscrappydootzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
