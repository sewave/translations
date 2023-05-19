@echo off
set T_FILENAME="Jungle Strike (USA, Europe).md"
set SCRIPTNAME="junglestrikesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
