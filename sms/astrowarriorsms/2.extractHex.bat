@echo off
set T_FILENAME="TR_Astro Warrior (U) [!].sms"
set SCRIPTNAME="astrowarriorsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
