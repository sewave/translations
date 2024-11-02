@echo off
set T_FILENAME="TR_Hit the Ice - VHL - The Official Video Hockey League (USA).md"
set S_FILENAME="Hit the Ice - VHL - The Official Video Hockey League (USA).md"
set SCRIPTNAME="hittheicesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
