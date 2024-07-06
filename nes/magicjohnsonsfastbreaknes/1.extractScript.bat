@echo off
set T_FILENAME="Magic Johnson's Fast Break (USA).nes"
set SCRIPTNAME="magicjohnsonsfastbreaknes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
