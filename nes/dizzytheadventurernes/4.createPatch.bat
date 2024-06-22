@echo off
set T_FILENAME="TR_Dizzy the Adventurer (USA) (Aladdin Compact Cartridge) (Unl).nes"
set S_FILENAME="Dizzy the Adventurer (USA) (Aladdin Compact Cartridge) (Unl).nes"
set SCRIPTNAME="dizzytheadventurernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
