@echo off
set T_FILENAME="Lucky Dime Caper, The Starring Donald Duck (U) [!].gg"
set SCRIPTNAME="luckydimegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
