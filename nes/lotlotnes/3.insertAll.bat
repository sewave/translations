@echo off
set T_FILENAME="TR_Lot Lot (Japan).nes"
set S_FILENAME="Lot Lot (Japan).nes"
set SCRIPTNAME="lotlotnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
