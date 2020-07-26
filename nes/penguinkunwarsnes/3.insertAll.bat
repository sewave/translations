@echo off
set T_FILENAME="TR_Penguin-kun Wars (Japan).nes"
set S_FILENAME="Penguin-kun Wars (Japan).nes"
set SCRIPTNAME="penguinkunwarsnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
