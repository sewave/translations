@echo off
set T_FILENAME="TR_Geimos (Japan).nes"
set S_FILENAME="Geimos (Japan).nes"
set SCRIPTNAME="geimosnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
