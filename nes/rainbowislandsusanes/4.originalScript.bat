@echo off
set T_FILENAME="Rainbow Islands - The Story of Bubble Bobble 2 (U) [!].nes"
set SCRIPTNAME="rainbowislandsusanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
