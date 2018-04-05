@echo off
set T_FILENAME="Alien Syndrome (USA, Europe).gg"
set SCRIPTNAME="aliensyndromegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
