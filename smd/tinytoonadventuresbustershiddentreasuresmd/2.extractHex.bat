@echo off
set T_FILENAME="TR_Tiny Toon Adventures - Buster's Hidden Treasure (USA).md"
set SCRIPTNAME="tinytoonadventuresbustershiddentreasuresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
