@echo off
set T_FILENAME="Flintstones, The (USA).md"
set SCRIPTNAME="flintstonesthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
