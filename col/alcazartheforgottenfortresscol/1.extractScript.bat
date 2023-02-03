@echo off
set T_FILENAME="Alcazar - The Forgotten Fortress (1985) (Activision).col"
set SCRIPTNAME="alcazartheforgottenfortresscol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
