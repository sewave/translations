@echo off
set T_FILENAME="Addams Family, The (UE) [!].gen"
set SCRIPTNAME="addamsfamilythesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
