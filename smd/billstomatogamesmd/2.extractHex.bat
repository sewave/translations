@echo off
set T_FILENAME="TR_Bill's Tomato Game (USA) (Proto).md"
set SCRIPTNAME="billstomatogamesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A51E0:100,A57C0:20
pause
