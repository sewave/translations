@echo off
set T_FILENAME="TR_Raid on Bungeling Bay (U) [!].nes"
set S_FILENAME="Raid on Bungeling Bay (U) [!].nes"
set SCRIPTNAME="raidonbungelingbaynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
