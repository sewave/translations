@echo off
set T_FILENAME="Pop Flamer (SG-1000) [!].sg"
set SCRIPTNAME="popflamersg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
