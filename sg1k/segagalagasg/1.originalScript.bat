@echo off
set T_FILENAME="Sega Galaga (SG-1000) [!].sg"
set SCRIPTNAME="segagalagasg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
