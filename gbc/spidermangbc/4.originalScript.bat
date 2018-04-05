@echo off
set T_FILENAME="Spider-Man (U) [C][!].gbc"
set SCRIPTNAME="spidermangb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
