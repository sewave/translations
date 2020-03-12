@echo off
set T_FILENAME="TR_Tomb Raider - Curse of the Sword (U) [C][!].gbc"
set S_FILENAME="Tomb Raider - Curse of the Sword (U) [C][!].gbc"
set SCRIPTNAME="tombraidercurseoftheswordgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
