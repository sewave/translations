@echo off
set T_FILENAME="TR_Heroes of Might and Magic (U) (M3) [C][!].gbc"
set S_FILENAME="Heroes of Might and Magic (U) (M3) [C][!].gbc"
set SCRIPTNAME="heroesofmightandmagicgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
