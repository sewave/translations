@echo off
set T_FILENAME="Mach Rider (JU) (PRG0) [!].nes"
set SCRIPTNAME="machridernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
