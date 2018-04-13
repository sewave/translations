@echo off
set T_FILENAME="TR_Basket Ball Nightmare (E) [!].sms"
set S_FILENAME="Basket Ball Nightmare (E) [!].sms"
set SCRIPTNAME="basketballnightmaresms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
