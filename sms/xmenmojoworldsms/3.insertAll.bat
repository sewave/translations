@echo off
set T_FILENAME="TR_X-Men - Mojo World (Brazil).sms"
set S_FILENAME="X-Men - Mojo World (Brazil).sms"
set SCRIPTNAME="xmenmojoworldsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
