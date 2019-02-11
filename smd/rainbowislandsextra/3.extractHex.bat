@echo off
set T_FILENAME="TR_Rainbow Islands - The Story of Bubble Bobble 2 (J) [c][!].bin"
set SCRIPTNAME="rainbowislandsextra"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
