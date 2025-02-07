@echo off
set T_FILENAME="Centipede (USA).col"
set SCRIPTNAME="centipedecol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
