@echo off
set T_FILENAME="TR_Kung Food (USA, Europe).lnx"
set S_FILENAME="Kung Food (USA, Europe).lnx"
set SCRIPTNAME="kungfoodlnx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
