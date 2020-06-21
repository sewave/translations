@echo off
set T_FILENAME="Flintstones, The (U) [!].gb"
set SCRIPTNAME="flintstonesthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
