@echo off
set T_FILENAME="Mortal Kombat 4 (USA, Europe) (SGB Enhanced).gbc"
set SCRIPTNAME="mortalkombat4gbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
