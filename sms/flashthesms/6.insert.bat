@echo off
set T_FILENAME="TR_Flash, The (E) [!].sms"
set S_FILENAME="Flash, The (E) [!].sms"
set SCRIPTNAME="flashthesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
