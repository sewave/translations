@echo off
set T_FILENAME="TR_MysteryWorldDizzy.nes"
set SCRIPTNAME="mysteryworlddizzynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
