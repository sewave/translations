@echo off
set T_FILENAME="TR_Rainbow Islands - The Story of Bubble Bobble 2 (J) [c][!].bin"
set S_FILENAME="Rainbow Islands - The Story of Bubble Bobble 2 (J) [c][!].bin"
set SCRIPTNAME="rainbowislandsextra"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
