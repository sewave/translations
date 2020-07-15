@echo off
set T_FILENAME="Hunt for Red October, The (USA).sfc"
set SCRIPTNAME="huntforredoctoberthesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
