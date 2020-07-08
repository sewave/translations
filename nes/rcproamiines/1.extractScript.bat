@echo off
set T_FILENAME="R.C. Pro-Am II (USA).nes"
set SCRIPTNAME="rcproamiines"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
