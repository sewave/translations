@echo off
set T_FILENAME="TR_Kiwi Kraze - A Bird-Brained Adventure! (U) [!].nes"
set S_FILENAME="Kiwi Kraze - A Bird-Brained Adventure! (U) [!].nes"
set SCRIPTNAME="kiwikrazeabirdbrainedadventurenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
