@echo off
set T_FILENAME="TR_Teddy Boy (UE) [!].sms"
set S_FILENAME="Teddy Boy (UE) [!].sms"
set SCRIPTNAME="teddyboysms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
