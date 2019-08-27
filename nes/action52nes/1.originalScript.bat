@echo off
set T_FILENAME="Action 52 (Active Enterprises) (REVA) [!].nes"
set SCRIPTNAME="action52nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
