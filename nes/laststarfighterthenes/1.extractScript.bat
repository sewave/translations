@echo off
set T_FILENAME="Last Starfighter, The (U) [!].nes"
set SCRIPTNAME="laststarfighterthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
