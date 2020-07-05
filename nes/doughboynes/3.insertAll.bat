@echo off
set T_FILENAME="TR_Dough Boy (Japan).nes"
set S_FILENAME="Dough Boy (Japan).nes"
set SCRIPTNAME="doughboynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
