@echo off
set T_FILENAME="TR_Kid Niki - Radical Ninja (USA) (Rev 1).nes"
set SCRIPTNAME="kidnikiradicalninjanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
