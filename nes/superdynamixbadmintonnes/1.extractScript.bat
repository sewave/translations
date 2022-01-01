@echo off
set T_FILENAME="Super Dyna'mix Badminton (J) [b1][o2].nes"
set SCRIPTNAME="superdynamixbadmintonnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
