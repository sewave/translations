@echo off
set T_FILENAME="TR_Road Rash (U).gg"
set S_FILENAME="Road Rash (U).gg"
set SCRIPTNAME="roadrashgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
