@echo off
set T_FILENAME="Armed F (Japan).pce"
set SCRIPTNAME="armedfpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
