@echo off
set T_FILENAME="TR_Megaman - Dr. Wily's Revenge (U) [!].gb"
set S_FILENAME="Megaman - Dr. Wily's Revenge (U) [!].gb"
set SCRIPTNAME="megamandrwilysrevengegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
