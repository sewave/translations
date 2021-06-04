@echo off
set T_FILENAME="Druaga no Tou (Japan).nes"
set SCRIPTNAME="druaganotounes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
