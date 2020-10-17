@echo off
set T_FILENAME="TR_Mortal Kombat II (World).md"
set SCRIPTNAME="mortalkombatiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
