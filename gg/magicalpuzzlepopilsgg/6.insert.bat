@echo off
set T_FILENAME="TR_Magical Puzzle Popils (World) (En,Ja).gg"
set S_FILENAME="Magical Puzzle Popils (World) (En,Ja).gg"
set SCRIPTNAME="magicalpuzzlepopilsgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
