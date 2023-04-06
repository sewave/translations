@echo off
set T_FILENAME="TR_Skiing (1986) (Telegames).col"
set S_FILENAME="Skiing (1986) (Telegames).col"
set SCRIPTNAME="skiingcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
