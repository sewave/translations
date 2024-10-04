@echo off
set T_FILENAME="Bill's Tomato Game (USA) (Proto).md"
set SCRIPTNAME="billstomatogamesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
