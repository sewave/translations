@echo off
set T_FILENAME="Hit the Ice - VHL - The Official Video Hockey League (USA).md"
set SCRIPTNAME="hittheicesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
