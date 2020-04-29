@echo off
set T_FILENAME="Master Karateka (Japan).gb"
set SCRIPTNAME="masterkaratekagb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
