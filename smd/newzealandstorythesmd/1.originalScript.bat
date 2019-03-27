@echo off
set T_FILENAME="New Zealand Story, The (J) [!].gen"
set SCRIPTNAME="newzealandstorythesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
