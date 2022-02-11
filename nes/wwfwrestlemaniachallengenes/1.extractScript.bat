@echo off
set T_FILENAME="WWF Wrestlemania Challenge (USA).nes"
set SCRIPTNAME="wwfwrestlemaniachallengenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
