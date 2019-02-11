@echo off
set T_FILENAME="Rainbow Islands - The Story of Bubble Bobble 2 (E) [!].nes"
set SCRIPTNAME="rainbowislandseurnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
