@echo off
set T_FILENAME="Alien 3 (UE) (REV01) [!].gen"
set SCRIPTNAME="alien3smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
