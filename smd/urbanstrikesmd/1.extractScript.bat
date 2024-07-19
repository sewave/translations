@echo off
set T_FILENAME="Urban Strike (USA, Europe).md"
set SCRIPTNAME="urbanstrikesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
