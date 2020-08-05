@echo off
set T_FILENAME="TR_Yogi Bear in Yogi Bear's Goldrush (Europe) (Proto).gg"
set S_FILENAME="Yogi Bear in Yogi Bear's Goldrush (Europe) (Proto).gg"
set SCRIPTNAME="yogibearinyogibearsgoldrushgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
