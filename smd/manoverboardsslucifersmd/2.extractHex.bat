@echo off
set T_FILENAME="TR_Man Overboard! - S.S. Lucifer (E) [c][!].bin"
set SCRIPTNAME="manoverboardsslucifersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
