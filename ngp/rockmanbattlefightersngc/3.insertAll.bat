@echo off
set T_FILENAME="TR_Rockman - Battle & Fighters (Japan) [T+ENG].ngc"
set S_FILENAME="Rockman - Battle & Fighters (Japan) [T+ENG].ngc"
set SCRIPTNAME="rockmanbattlefightersngc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
