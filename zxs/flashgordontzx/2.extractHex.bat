@echo off
set T_FILENAME="TR_Flash Gordon.tzx"
set SCRIPTNAME="flashgordontzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
