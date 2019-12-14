@echo off
set T_FILENAME="Konami's Tennis (1984) (Konami) (J).rom"
set SCRIPTNAME="konamistennisrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
