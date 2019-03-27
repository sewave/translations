@echo off
set T_FILENAME="Kiwi Kraze - A Bird-Brained Adventure! (U) [!].nes"
set SCRIPTNAME="kiwikrazeabirdbrainedadventurenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
