@echo off
set T_FILENAME="Legend of Galahad, The (USA, Europe).md"
set SCRIPTNAME="legendofgalahadthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
