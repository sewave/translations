@echo off
set T_FILENAME="TR_Batman Returns (USA, Europe).lnx"
set S_FILENAME="Batman Returns (USA, Europe).lnx"
set SCRIPTNAME="batmanreturnslnx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
