@echo off
set T_FILENAME="Shadow Dancer - The Secret of Shinobi (W) [c][!].gen"
set SCRIPTNAME="shadowdancersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
