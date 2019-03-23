@echo off
set T_FILENAME="TR_Mach Rider (JU) (PRG0) [!].nes"
set SCRIPTNAME="machridernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9580:10,94B0:20
pause
