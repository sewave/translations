@echo off
set T_FILENAME="Safari Race (SG-1000).sg"
set SCRIPTNAME="safariracesg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
