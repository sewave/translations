@echo off
set T_FILENAME="TR_Kid Niki - Radical Ninja (USA) (Rev 1).nes"
set S_FILENAME="Kid Niki - Radical Ninja (USA) (Rev 1).nes"
set SCRIPTNAME="kidnikiradicalninjanes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
