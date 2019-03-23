@echo off
set T_FILENAME="TR_Mach Rider (JU) (PRG0) [!].nes"
set S_FILENAME="Mach Rider (JU) (PRG0) [!].nes"
set SCRIPTNAME="machridernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
