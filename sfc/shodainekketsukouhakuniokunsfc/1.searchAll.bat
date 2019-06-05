@echo off
set T_FILENAME="Shodai Nekketsu Kouha Kunio-kun (J) [T+ENG].smc"
set SCRIPTNAME="shodainekketsukouhakuniokunsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
