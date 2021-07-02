@echo off
set T_FILENAME="TR_Friday the 13th (USA).nes"
set S_FILENAME="Friday the 13th (USA).nes"
set SCRIPTNAME="fridaythe13thnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
