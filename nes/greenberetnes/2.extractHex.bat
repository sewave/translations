@echo off
set T_FILENAME="TR_Green Beret (FDS Conversion, Whirlwind Manu)(Unl)[U][!].nes"
set SCRIPTNAME="greenberetnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
