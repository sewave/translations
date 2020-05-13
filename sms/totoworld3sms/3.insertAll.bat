@echo off
set T_FILENAME="TR_Toto World 3 (K) [!].sms"
set S_FILENAME="Toto World 3 (K) [!].sms"
set SCRIPTNAME="totoworld3sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
