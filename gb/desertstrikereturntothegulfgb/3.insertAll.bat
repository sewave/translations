@echo off
set T_FILENAME="TR_Desert Strike - Return to the Gulf (Europe) (SGB Enhanced).gb"
set S_FILENAME="Desert Strike - Return to the Gulf (Europe) (SGB Enhanced).gb"
set SCRIPTNAME="desertstrikereturntothegulfgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
REM java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
