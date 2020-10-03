@echo off
set T_FILENAME="Dream T.V. (USA).sfc"
set SCRIPTNAME="dreamtvsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
