@echo off
set T_FILENAME="TR_Alien Syndrome (USA, Europe).gg"
set SCRIPTNAME="aliensyndromegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
