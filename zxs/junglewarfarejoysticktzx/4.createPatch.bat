@echo off
set T_FILENAME="TR_Jungle Warfare - Joystick (1989)(Mastertronic).tzx"
set S_FILENAME="Jungle Warfare - Joystick (1989)(Mastertronic).tzx"
set SCRIPTNAME="junglewarfarejoysticktzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
