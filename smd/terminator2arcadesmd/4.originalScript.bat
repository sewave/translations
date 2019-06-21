@echo off
set T_FILENAME="T2 - The Arcade Game (UE) (REV01) [!].bin"
set SCRIPTNAME="terminator2arcadesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
