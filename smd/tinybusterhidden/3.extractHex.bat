@echo off
set T_FILENAME="TR_Tiny Toon Adventures - Buster's Hidden Treasure (U) [!].bin"
set SCRIPTNAME="tinybusterhidden"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
