@echo off
set T_FILENAME="Alien Soldier (Japan).md"
set SCRIPTNAME="aliensoldiersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
