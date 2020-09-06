@echo off
set T_FILENAME="Wings 2 - Aces High (USA).sfc"
set SCRIPTNAME="wings2aceshighsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
