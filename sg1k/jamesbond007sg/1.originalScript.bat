@echo off
set T_FILENAME="James Bond 007 (SG-1000) [!].sg"
set SCRIPTNAME="jamesbond007sg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
