@echo off
set T_FILENAME="TR_Flash, The (E) [!].sms"
set SCRIPTNAME="flashthesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
