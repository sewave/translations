@echo off
set T_FILENAME="TR_Taz-Mania (World).md"
set S_FILENAME="Taz-Mania (World) [EXP].md"
set SCRIPTNAME="tazmaniasmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% font_mod.gfx 80000
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
