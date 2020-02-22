@echo off
set T_FILENAME="TR_Magic Jewelry (As) [a1].nes"
set SCRIPTNAME="magicjewelrynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8CB0:10,8060:A0,8C90:10
pause
