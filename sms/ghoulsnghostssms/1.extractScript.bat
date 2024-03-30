@echo off
set T_FILENAME="Ghouls'n Ghosts (USA, Europe).sms"
set SCRIPTNAME="ghoulsnghostssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
