@echo off
set T_FILENAME="Pagemaster, The (USA).sfc"
set SCRIPTNAME="pagemasterthesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
