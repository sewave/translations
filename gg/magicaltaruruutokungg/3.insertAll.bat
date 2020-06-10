@echo off
set T_FILENAME="TR_Magical Taruruuto-kun (Japan).gg"
set S_FILENAME="Magical Taruruuto-kun (Japan).gg"
set SCRIPTNAME="magicaltaruruutokungg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
