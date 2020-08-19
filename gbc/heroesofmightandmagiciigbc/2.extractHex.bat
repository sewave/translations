@echo off
set T_FILENAME="TR_Heroes of Might and Magic II (U) (M3) [C][!].gbc"
set SCRIPTNAME="heroesofmightandmagiciigbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
