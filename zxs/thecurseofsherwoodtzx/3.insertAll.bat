@echo off
set T_FILENAME="TR_The Curse Of Sherwood.tzx"
set S_FILENAME="The Curse Of Sherwood.tzx"
set SCRIPTNAME="thecurseofsherwoodtzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
