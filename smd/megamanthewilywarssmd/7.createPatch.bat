@echo off
set T_FILENAME="TR_Megaman - The Wily Wars (E).bin"
set S_FILENAME="Megaman - The Wily Wars (E).bin"
set SCRIPTNAME="megamanthewilywarssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
