@echo off
set T_FILENAME="Man Overboard! - S.S. Lucifer (E) [c][!].bin"
set SCRIPTNAME="manoverboardsslucifersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
