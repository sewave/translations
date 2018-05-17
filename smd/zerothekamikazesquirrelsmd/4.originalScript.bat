@echo off
set T_FILENAME="Zero the Kamikaze Squirrel (U) [!].gen"
set SCRIPTNAME="zerothekamikazesquirrelsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
