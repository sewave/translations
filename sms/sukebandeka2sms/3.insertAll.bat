@echo off
set T_FILENAME="TR_Sukeban Deka 2 (J) [T+ENG].sms"
set S_FILENAME="Sukeban Deka 2 (J) [T+ENG].sms"
set SCRIPTNAME="sukebandeka2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% font.dat b044
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
