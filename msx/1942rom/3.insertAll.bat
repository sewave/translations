@echo off
set T_FILENAME="TR_1942 (1986) (Ascii) (J).rom"
set S_FILENAME="1942 (1986) (Ascii) (J).rom"
set SCRIPTNAME="1942rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
