@echo off
set T_FILENAME="TR_Sonic The Hedgehog 2 (U) [!].gg"
set SCRIPTNAME="sonicthehedgehog2gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
