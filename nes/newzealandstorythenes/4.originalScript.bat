@echo off
set T_FILENAME="New Zealand Story, The (E) [!].nes"
set SCRIPTNAME="newzealandstorythenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
