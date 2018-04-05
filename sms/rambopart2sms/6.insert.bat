@echo off
set T_FILENAME="TR_Rambo - First Blood Part 2 (U) [!].sms"
set S_FILENAME="Rambo - First Blood Part 2 (U) [!].sms"
set SCRIPTNAME="rambopart2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
