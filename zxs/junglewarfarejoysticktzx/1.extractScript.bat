@echo off
set T_FILENAME="Jungle Warfare - Joystick (1989)(Mastertronic).tzx"
set SCRIPTNAME="junglewarfarejoysticktzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
