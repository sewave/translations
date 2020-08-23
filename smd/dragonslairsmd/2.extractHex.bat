@echo off
set T_FILENAME="TR_Dragon's Lair (USA) (Proto) (June, 1994).md"
set SCRIPTNAME="dragonslairsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3DF24:100,3E644:140,38D74:40,38E34:80,3A5B4:80
pause
