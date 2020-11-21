@echo off
set T_FILENAME="BugTris (Korea) (Unl).nes"
set SCRIPTNAME="bugtrisnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
