@echo off 
set T_FILENAME="TR_Die Hard (Japan) [T+ENG].pce"
set S_FILENAME="Die Hard (Japan) [T+ENG].pce"
set SCRIPTNAME="diehardpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
