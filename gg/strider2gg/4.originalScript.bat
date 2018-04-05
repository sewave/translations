@echo off
set T_FILENAME="Strider Returns (U) [!].gg"
set SCRIPTNAME="strider2gg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
