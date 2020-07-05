@echo off
set T_FILENAME="Madoola no Tsubasa (Japan).nes"
set SCRIPTNAME="madoolanotsubasanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
