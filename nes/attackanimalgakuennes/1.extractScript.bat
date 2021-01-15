@echo off
set T_FILENAME="Attack Animal Gakuen (Japan).nes"
set SCRIPTNAME="attackanimalgakuennes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
