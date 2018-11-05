@echo off
set T_FILENAME="TR_Sonic The Hedgehog (U) (V1.1) [!].gg"
set SCRIPTNAME="sonicthehedgehoggg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
