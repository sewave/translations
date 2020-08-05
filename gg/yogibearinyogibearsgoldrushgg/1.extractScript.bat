@echo off
set T_FILENAME="Yogi Bear in Yogi Bear's Goldrush (Europe) (Proto).gg"
set SCRIPTNAME="yogibearinyogibearsgoldrushgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
