@echo off
set T_FILENAME="TR_The_Dark_Lost_Pages.tap"
set S_FILENAME="The_Dark_Lost_Pages.tap"
set SCRIPTNAME="thedarklostpagestap"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctap %T_FILENAME%
pause
