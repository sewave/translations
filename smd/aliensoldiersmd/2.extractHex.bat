@echo off
set T_FILENAME="TR_Alien Soldier (Japan).md"
set SCRIPTNAME="aliensoldiersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
