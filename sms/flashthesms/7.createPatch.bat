@echo off
set T_FILENAME="TR_Flash, The (E) [!].sms"
set S_FILENAME="Flash, The (E) [!].sms"
set SCRIPTNAME="flashthesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
