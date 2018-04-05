@echo off
set T_FILENAME="TR_Alien Syndrome (USA, Europe).gg"
set S_FILENAME="Alien Syndrome (USA, Europe).gg"
set SCRIPTNAME="aliensyndromegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
