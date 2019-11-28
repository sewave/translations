@echo off
set T_FILENAME="TR_Bomberman Special (1986) (Hudson) (J).rom"
set S_FILENAME="Bomberman Special (1986) (Hudson) (J).rom"
set SCRIPTNAME="bombermanspecialrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
