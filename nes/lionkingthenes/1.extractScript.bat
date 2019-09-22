@echo off
set T_FILENAME="Lion King, The (Europe).nes"
set SCRIPTNAME="lionkingthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
