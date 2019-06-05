@echo off
set T_FILENAME="Pine Applin (1984) (Zap) (J).rom"
set SCRIPTNAME="pineapplinrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
