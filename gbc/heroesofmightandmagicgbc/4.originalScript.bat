@echo off
set T_FILENAME="Heroes of Might and Magic (U) (M3) [C][!].gbc"
set SCRIPTNAME="heroesofmightandmagicgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
