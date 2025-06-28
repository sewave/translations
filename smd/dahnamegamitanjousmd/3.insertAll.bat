@echo off
set T_FILENAME="TR_Dahna - Megami Tanjou (Japan) [T+ENG].md"
set S_FILENAME="Dahna - Megami Tanjou (Japan) [T+ENG].md"
set SCRIPTNAME="dahnamegamitanjousmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
