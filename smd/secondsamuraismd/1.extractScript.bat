@echo off
set T_FILENAME="Second Samurai (Europe).md"
set SCRIPTNAME="secondsamuraismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
