@echo off
set T_FILENAME="TR_Hokuto no Ken (J) [T+ENG].sms"
set S_FILENAME="Hokuto no Ken (J) [T+ENG].sms"
set SCRIPTNAME="hokutonokensms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
