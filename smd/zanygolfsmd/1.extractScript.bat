@echo off
set T_FILENAME="Zany Golf (UE) (REV01).bin"
set SCRIPTNAME="zanygolfsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
