@echo off
set T_FILENAME="James 'Buster' Douglas Knockout Boxing (USA, Europe).md"
set SCRIPTNAME="jamesbusterdouglasknockoutboxingsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
