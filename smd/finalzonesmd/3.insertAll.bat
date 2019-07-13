@echo off
set T_FILENAME="TR_Final Zone (JU) [!].bin"
set S_FILENAME="Final Zone (JU) [!].bin"
set SCRIPTNAME="finalzonesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
