@echo off
set T_FILENAME="TR_Kiwi Kraze - A Bird-Brained Adventure! (U) [!].nes"
set SCRIPTNAME="kiwikrazeabirdbrainedadventurenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29B10-2A370,32310:70,20070:60,32A50:30,32B40:30,27050:20,34B10:70
pause
