@echo off
set T_FILENAME="Rock n' Roll Racing (USA).md"
set SCRIPTNAME="rocknrollracingsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
