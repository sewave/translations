@echo off
set T_FILENAME="Heroes of Might and Magic II (U) (M3) [C][!].gbc"
set SCRIPTNAME="heroesofmightandmagiciigbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
