@echo off
set T_FILENAME="TR_Ninja Crusaders - Ryuuga (Japan).nes"
set SCRIPTNAME="ninjacrusadersryuuganes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BE10:10,BE70:40
pause
