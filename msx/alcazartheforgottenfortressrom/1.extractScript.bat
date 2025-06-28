@echo off
set T_FILENAME="Alcazar - The Forgotten Fortress (Japan).rom"
set SCRIPTNAME="alcazartheforgottenfortressrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
