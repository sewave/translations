@echo off
set T_FILENAME="El. Viento (USA) [MIJET].md"
set SCRIPTNAME="elvientomijetsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
