@echo off
set T_FILENAME="Megaman Xtreme (U) [C][!].gbc"
set SCRIPTNAME="megamanxtremegbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
