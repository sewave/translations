@echo off
set T_FILENAME="TechnoClash (USA, Europe).md"
set SCRIPTNAME="technoclashsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
