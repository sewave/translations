@echo off
set T_FILENAME="TR_Joe & Mac Caveman Ninja (U) [!].bin"
set S_FILENAME="Joe & Mac Caveman Ninja (U) [!].bin"
set SCRIPTNAME="joemaccavemanninjasmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
