@echo off
set T_FILENAME="TR_Heroes of Might and Magic (U) (M3) [C][!].gbc"
set SCRIPTNAME="heroesofmightandmagicgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F4CD1:10,F4D99:20,F4E91:20
pause
