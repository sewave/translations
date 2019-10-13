@echo off
set T_FILENAME="TR_James 'Buster' Douglas Knockout Boxing (USA, Europe).md"
set S_FILENAME="James 'Buster' Douglas Knockout Boxing (USA, Europe).md"
set SCRIPTNAME="jamesbusterdouglasknockoutboxingsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
