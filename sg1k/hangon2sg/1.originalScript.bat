@echo off
set T_FILENAME="Hang-On 2 (SG-1000).sg"
set SCRIPTNAME="hangon2sg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
