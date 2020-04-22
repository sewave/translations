@echo off
set T_FILENAME="Explosive Brick '94 (Sachen) [!].gb"
set SCRIPTNAME="explosivebrick94gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
