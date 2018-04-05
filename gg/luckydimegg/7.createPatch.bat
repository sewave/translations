@echo off
set T_FILENAME="TR_Lucky Dime Caper, The Starring Donald Duck (U) [!].gg"
set S_FILENAME="Lucky Dime Caper, The Starring Donald Duck (U) [!].gg"
set SCRIPTNAME="luckydimegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
