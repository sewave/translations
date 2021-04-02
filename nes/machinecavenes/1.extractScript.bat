@echo off
set T_FILENAME="Machine Cave(1.19).nes"
set SCRIPTNAME="machinecavenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
