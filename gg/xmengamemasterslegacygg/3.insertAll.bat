@echo off
set T_FILENAME="TR_X-Men - Gamemaster's Legacy (U) [!].gg"
set S_FILENAME="X-Men - Gamemaster's Legacy (U) [!].gg"
set SCRIPTNAME="xmengamemasterslegacygg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
