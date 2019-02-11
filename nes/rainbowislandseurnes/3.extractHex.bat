@echo off
set T_FILENAME="TR_Rainbow Islands - The Story of Bubble Bobble 2 (E) [!].nes"
set SCRIPTNAME="rainbowislandseurnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24A10:400,24270:260,25010:200,36010:200
pause
