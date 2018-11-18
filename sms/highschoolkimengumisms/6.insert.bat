@echo off
set T_FILENAME="TR_High School! Kimengumi (J) [T+ENG].sms"
set S_FILENAME="High School! Kimengumi (J) [T+ENG].sms"
set SCRIPTNAME="highschoolkimengumisms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
