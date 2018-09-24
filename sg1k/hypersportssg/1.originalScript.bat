@echo off
set T_FILENAME="Hyper Sports (SG-1000) [!].sg"
set SCRIPTNAME="hypersportssg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
