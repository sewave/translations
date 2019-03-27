@echo off
set T_FILENAME="Kiwi Kraze - A Bird-Brained Adventure! (U) [!].nes"
set SCRIPTNAME="kiwikrazeabirdbrainedadventurenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
