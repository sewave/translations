@echo off
set T_FILENAME="TR_Chip 'n Dale - Rescue Rangers (USA).nes"
set S_FILENAME="Chip 'n Dale - Rescue Rangers (USA).nes"
set SCRIPTNAME="chipndalerescuerangersnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
