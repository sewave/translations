@echo off
set T_FILENAME="TR_Super R.C. Pro-Am (USA, Europe).gb"
set S_FILENAME="Super R.C. Pro-Am (USA, Europe).gb"
set SCRIPTNAME="superrcproamgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
