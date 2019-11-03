@echo off
set T_FILENAME="TR_Zillion (UE) (V1.1) [!].sms"
set S_FILENAME="Zillion (UE) (V1.1) [!].sms"
set SCRIPTNAME="zillionsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
