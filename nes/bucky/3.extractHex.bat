@echo off
set T_FILENAME="Bucky O'Hare (U) [T+ESP].nes"
set S_FILENAME="Bucky O'Hare (U) [!].nes"
set SCRIPTNAME="bucky"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22E10:80,3C670-3C870
pause
