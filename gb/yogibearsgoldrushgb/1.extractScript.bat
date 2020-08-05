@echo off
set T_FILENAME="Yogi Bear's Gold Rush (USA).gb"
set SCRIPTNAME="yogibearsgoldrushgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
