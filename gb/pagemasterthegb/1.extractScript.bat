@echo off
set T_FILENAME="Pagemaster, The (USA) (SGB Enhanced).gb"
set SCRIPTNAME="pagemasterthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
