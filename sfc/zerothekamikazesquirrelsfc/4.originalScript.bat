@echo off
set T_FILENAME="Zero the Kamikaze Squirrel (U) [!].smc"
set SCRIPTNAME="zerothekamikazesquirrelsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
