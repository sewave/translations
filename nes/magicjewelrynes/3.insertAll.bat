@echo off
set T_FILENAME="TR_Magic Jewelry (As) [a1].nes"
set S_FILENAME="Magic Jewelry (As) [a1].nes"
set SCRIPTNAME="magicjewelrynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
