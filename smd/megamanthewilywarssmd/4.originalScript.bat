@echo off
set T_FILENAME="Megaman - The Wily Wars (E).bin"
set SCRIPTNAME="megamanthewilywarssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
