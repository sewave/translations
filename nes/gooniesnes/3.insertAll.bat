@echo off
set T_FILENAME="TR_Goonies (Japan).nes"
set S_FILENAME="Goonies (Japan).nes"
set SCRIPTNAME="gooniesnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
