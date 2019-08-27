@echo off
set T_FILENAME="TR_Phantasy Star Gaiden (J) [T+EngV4.0Smallfont_Magic_Trans].gg"
set S_FILENAME="Phantasy Star Gaiden (J) [T+EngV4.0Smallfont_Magic_Trans].gg"
set SCRIPTNAME="phantasystargaidengg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
