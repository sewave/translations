@echo off
set T_FILENAME="Tecmo World Cup Soccer (Japan).nes"
set SCRIPTNAME="tecmoworldcupsoccernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
