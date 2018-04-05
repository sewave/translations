@echo off
set T_FILENAME="TR_Battlemaniacs (B) [!].sms"
set S_FILENAME="Battlemaniacs (B) [!].sms"
set SCRIPTNAME="battlemaniacssms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
