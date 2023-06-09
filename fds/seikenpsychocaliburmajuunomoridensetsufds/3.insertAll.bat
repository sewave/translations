@echo off
set T_FILENAME="TR_Seiken Psychocalibur - Majuu no Mori Densetsu (Japan) [T+ENG].fds"
set S_FILENAME="Seiken Psychocalibur - Majuu no Mori Densetsu (Japan) [T+ENG].fds"
set SCRIPTNAME="seikenpsychocaliburmajuunomoridensetsufds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
