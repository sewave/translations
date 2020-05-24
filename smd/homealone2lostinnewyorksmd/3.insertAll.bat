@echo off
set T_FILENAME="TR_Home Alone 2 - Lost in New York (U) [!].bin"
set S_FILENAME="Home Alone 2 - Lost in New York (U) [!].bin"
set SCRIPTNAME="homealone2lostinnewyorksmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
