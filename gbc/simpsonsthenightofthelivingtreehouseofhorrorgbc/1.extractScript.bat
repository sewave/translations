@echo off
set T_FILENAME="Simpsons, The - Night of the Living Treehouse of Horror (USA, Europe).gbc"
set SCRIPTNAME="simpsonsthenightofthelivingtreehouseofhorrorgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
