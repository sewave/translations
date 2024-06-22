@echo off
set T_FILENAME="TR_Dizzy the Adventurer (USA) (Aladdin Compact Cartridge) (Unl).nes"
set SCRIPTNAME="dizzytheadventurernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18886:30,188BF:30
pause
