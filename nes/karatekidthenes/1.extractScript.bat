@echo off
set T_FILENAME="Karate Kid, The (U) [!].nes"
set SCRIPTNAME="karatekidthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
