@echo off
set T_FILENAME="TR_James 'Buster' Douglas Knockout Boxing (U) [!].sms"
set S_FILENAME="James 'Buster' Douglas Knockout Boxing (U) [!].sms"
set SCRIPTNAME="jamesbusterdouglasknockoutboxingsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
