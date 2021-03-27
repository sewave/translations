@echo off
set T_FILENAME="TR_Baby's Day Out (USA) (Proto) (February, 1995).md"
set S_FILENAME="Baby's Day Out (USA) (Proto) (February, 1995).md"
set SCRIPTNAME="babysdayoutsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
