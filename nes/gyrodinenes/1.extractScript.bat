@echo off
set T_FILENAME="Gyrodine (J) [!].nes"
set SCRIPTNAME="gyrodinenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
