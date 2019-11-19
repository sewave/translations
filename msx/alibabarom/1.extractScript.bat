@echo off
set T_FILENAME="Alibaba (1984) (Sony) (J).rom"
set SCRIPTNAME="alibabarom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
