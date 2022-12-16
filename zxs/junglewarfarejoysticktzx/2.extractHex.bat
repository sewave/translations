@echo off
set T_FILENAME="TR_Jungle Warfare - Joystick (1989)(Mastertronic).tzx"
set SCRIPTNAME="junglewarfarejoysticktzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4F14:48
pause
