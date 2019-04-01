@echo off
set T_FILENAME="TR_Raid on Bungeling Bay (U) [!].nes"
set SCRIPTNAME="raidonbungelingbaynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5520:60
pause
