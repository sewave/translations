@echo off
set T_FILENAME="Grinch, The (USA).gbc"
set SCRIPTNAME="grinchthegbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
