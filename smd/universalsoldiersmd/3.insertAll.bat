@echo off
set T_FILENAME="TR_Universal Soldier (U) [!].gen"
set S_FILENAME="Universal Soldier (U) [!].gen"
set SCRIPTNAME="universalsoldiersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
