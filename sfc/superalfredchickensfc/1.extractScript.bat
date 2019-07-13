@echo off
set T_FILENAME="Super Alfred Chicken (USA).sfc"
set SCRIPTNAME="superalfredchickensfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
