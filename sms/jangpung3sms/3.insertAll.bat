@echo off
set T_FILENAME="TR_Jang Pung 3 (K) (Unl).sms"
set S_FILENAME="Jang Pung 3 (K) (Unl).sms"
set SCRIPTNAME="jangpung3sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
REM java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
