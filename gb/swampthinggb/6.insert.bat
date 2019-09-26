@echo off
set T_FILENAME="TR_Swamp Thing (U) [!].gb"
set S_FILENAME="Swamp Thing (U) [!].gb"
set SCRIPTNAME="swampthinggb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
REM java -jar Hextractor.jar -fcg %T_FILENAME%
pause
