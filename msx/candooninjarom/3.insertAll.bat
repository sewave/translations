@echo off
set T_FILENAME="TR_Candoo Ninja (1983) (Ascii) (J).rom"
set S_FILENAME="Candoo Ninja (1983) (Ascii) (J).rom"
set SCRIPTNAME="candooninjarom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
