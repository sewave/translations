@echo off
set T_FILENAME="TR_Missile Defense 3-D (UEB) [!].sms"
set S_FILENAME="Missile Defense 3-D (UEB) [!].sms"
set SCRIPTNAME="missiledefense3dsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
