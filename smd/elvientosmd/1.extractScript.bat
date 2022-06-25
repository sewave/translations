@echo off
set T_FILENAME="El. Viento (USA).md"
set SCRIPTNAME="elvientosmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
