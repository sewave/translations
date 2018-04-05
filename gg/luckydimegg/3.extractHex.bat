@echo off
set T_FILENAME="TR_Lucky Dime Caper, The Starring Donald Duck (U) [!].gg"
set SCRIPTNAME="luckydimegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
