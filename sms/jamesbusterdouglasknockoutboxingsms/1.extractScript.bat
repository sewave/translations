@echo off
set T_FILENAME="James 'Buster' Douglas Knockout Boxing (U) [!].sms"
set SCRIPTNAME="jamesbusterdouglasknockoutboxingsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
