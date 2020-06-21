@echo off
set T_FILENAME="Kid Niki - Radical Ninja (USA) (Rev 1).nes"
set SCRIPTNAME="kidnikiradicalninjanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
