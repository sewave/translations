@echo off
set T_FILENAME="Top Gun - The Second Mission (U) [!].nes"
set SCRIPTNAME="topgunthesecondmissionnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
