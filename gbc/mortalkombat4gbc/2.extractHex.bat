@echo off
set T_FILENAME="TR_Mortal Kombat 4 (USA, Europe) (SGB Enhanced).gbc"
set SCRIPTNAME="mortalkombat4gbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
