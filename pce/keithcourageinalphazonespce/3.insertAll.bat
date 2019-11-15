@echo off
set T_FILENAME="TR_Keith Courage in Alpha Zones (U).pce"
set S_FILENAME="Keith Courage in Alpha Zones (U).pce"
set SCRIPTNAME="keithcourageinalphazonespce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
