@echo off
set T_FILENAME="TR_Zunou Senkan Galg (Japan).nes"
set S_FILENAME="Zunou Senkan Galg (Japan).nes"
set SCRIPTNAME="zunousenkangalgnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
