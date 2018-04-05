@echo off
set T_FILENAME="TR_Lion King, The (E) [!].sms"
set S_FILENAME="Lion King, The (E) [!].sms"
set SCRIPTNAME="lionkingsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
