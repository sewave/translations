@echo off
set T_FILENAME="TR_Megaman Xtreme (U) [C][!].gbc"
set S_FILENAME="Megaman Xtreme (U) [C][!].gbc"
set SCRIPTNAME="megamanxtremegbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
