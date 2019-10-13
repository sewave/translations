@echo off
set T_FILENAME="European Club Soccer (Europe).md"
set SCRIPTNAME="europeanclubsoccersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
