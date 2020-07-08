@echo off
set T_FILENAME="R.C. Pro-Am (USA) (Rev 1).nes"
set SCRIPTNAME="rcproamnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
