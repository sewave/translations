@echo off
set T_FILENAME="TR_Rainbow Islands - The Story of Bubble Bobble 2 (E) [!].nes"
set S_FILENAME="Rainbow Islands - The Story of Bubble Bobble 2 (E) [!].nes"
set SCRIPTNAME="rainbowislandseurnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
