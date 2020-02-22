@echo off
set T_FILENAME="Magic Jewelry (As) [a1].nes"
set SCRIPTNAME="magicjewelrynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
