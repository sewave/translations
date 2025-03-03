@echo off
set T_FILENAME="Pirates! Gold (USA).md"
set SCRIPTNAME="piratesgoldsmd"
HexString.exe -d -4b %T_FILENAME% 0x1FB18 0x454 0x0 0x00 %SCRIPTNAME%.ext %SCRIPTNAME%.tbl
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
