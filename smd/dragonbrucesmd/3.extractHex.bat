@echo off
set T_FILENAME="TR_Dragon - The Bruce Lee Story (U) [!].bin"
set SCRIPTNAME="dragonbrucesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
