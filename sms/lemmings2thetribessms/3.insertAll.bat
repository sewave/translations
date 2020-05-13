@echo off
set T_FILENAME="TR_Lemmings 2 - The Tribes (Unknown) (Proto).sms"
set S_FILENAME="Lemmings 2 - The Tribes (Unknown) (Proto).sms"
set SCRIPTNAME="lemmings2thetribessms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
