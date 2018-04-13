@echo off
set T_FILENAME="TR_Basket Ball Nightmare (E) [!].sms"
set SCRIPTNAME="basketballnightmaresms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
