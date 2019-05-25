@echo off
set T_FILENAME="Flash Point (J) (Prototype).bin"
set SCRIPTNAME="flashpointsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
