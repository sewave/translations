@echo off
set T_FILENAME="TR_Tomb Raider - Curse of the Sword (U) [C][!].gbc"
set SCRIPTNAME="tombraidercurseoftheswordgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
