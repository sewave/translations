@echo off
set T_FILENAME="TR_Ninja Crusaders - Ryuuga (Japan).nes"
set S_FILENAME="Ninja Crusaders - Ryuuga (Japan).nes"
set SCRIPTNAME="ninjacrusadersryuuganes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
