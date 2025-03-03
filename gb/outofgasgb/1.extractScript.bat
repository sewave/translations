@echo off
set T_FILENAME="Out of Gas (USA).gb"
set SCRIPTNAME="outofgasgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
HexString.exe -d -2b %T_FILENAME% 0x4293 0x80 0x0 0x00 %SCRIPTNAME%Alt2.ext %SCRIPTNAME%.tbl
REM java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.ext %SCRIPTNAME%Alt3.off
pause
