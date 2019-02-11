@echo off
set T_FILENAME="TR_Cannon Fodder (E) [!].bin"
set S_FILENAME="Cannon Fodder (E) [!].bin"
set SCRIPTNAME="cannonfoddersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
