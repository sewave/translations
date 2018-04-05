@echo off
set T_FILENAME="TR_Greendog - The Beached Surfer Dude (UE) [!].bin"
set S_FILENAME="Greendog - The Beached Surfer Dude (UE) [!].bin"
set SCRIPTNAME="greendog"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
