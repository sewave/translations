@echo off
set T_FILENAME="TR_Magic Johnson's Fast Break (USA).nes"
set S_FILENAME="Magic Johnson's Fast Break (USA).nes"
set SCRIPTNAME="magicjohnsonsfastbreaknes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
