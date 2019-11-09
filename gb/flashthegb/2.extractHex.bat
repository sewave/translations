@echo off
set T_FILENAME="TR_Flash, The (U) [!].gb"
set SCRIPTNAME="flashthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
