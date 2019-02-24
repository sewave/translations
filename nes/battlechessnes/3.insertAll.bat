@echo off
set T_FILENAME="TR_Battle Chess (U) [!].nes"
set S_FILENAME="Battle Chess (U) [!].nes"
set SCRIPTNAME="battlechessnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
