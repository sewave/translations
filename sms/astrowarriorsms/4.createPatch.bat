@echo off
set T_FILENAME="TR_Astro Warrior (U) [!].sms"
set S_FILENAME="Astro Warrior (U) [!].sms"
set SCRIPTNAME="astrowarriorsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
