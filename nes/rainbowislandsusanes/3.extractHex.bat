@echo off
set T_FILENAME="TR_Rainbow Islands - The Story of Bubble Bobble 2 (U) [!].nes"
set SCRIPTNAME="rainbowislandsusanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1658F:80
pause
