@echo off
set T_FILENAME="TR_Taiyou no Yuusha - Fighbird GB (Japan) [T+ENG].gb"
set S_FILENAME="Taiyou no Yuusha - Fighbird GB (Japan) [T+ENG].gb"
set SCRIPTNAME="taiyounoyuushafighbirdgbgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
