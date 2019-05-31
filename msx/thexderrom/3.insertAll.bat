@echo off
set T_FILENAME="TR_Thexder (1986) (Gamearts) (J).rom"
set S_FILENAME="Thexder (1986) (Gamearts) (J).rom"
set SCRIPTNAME="thexderrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
