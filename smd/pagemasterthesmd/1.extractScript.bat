@echo off
set T_FILENAME="Pagemaster, The (USA).md"
set SCRIPTNAME="pagemasterthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
