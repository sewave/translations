@echo off
set T_FILENAME="TR_Sam Mallard - The Case of the Missing Swan (World) (SGB Enhanced) (Aftermarket) (Unl).gb"
set S_FILENAME="Sam Mallard - The Case of the Missing Swan (World) (SGB Enhanced) (Aftermarket) (Unl).gb"
set SCRIPTNAME="mallardgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
HexString.exe -e -2b tr_%SCRIPTNAME%.ext 0x28034 0x800 0x28002 0x24000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Alt.ext 0x1C1EE 0x79C0 0x1C000 0x18000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Alt2.ext 0x4C084 0x4000 0x4C000 0x48000 %T_FILENAME% %SCRIPTNAME%.tbl
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt4.tbl tr_%SCRIPTNAME%Alt4.ext %T_FILENAME%
HexString.exe -e -2b tr_%SCRIPTNAME%Room01.ext 0x24A00 0x100 0x24000 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room02.ext 0x24B00 0x100 0x240D7 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room03.ext 0x24C00 0x100 0x24131 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room04.ext 0x24D00 0x100 0x241A0 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room05.ext 0x24E00 0x100 0x2420F 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room06.ext 0x24F00 0x100 0x242C5 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room07.ext 0x25000 0x100 0x24336 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room08.ext 0x25100 0x100 0x243AC 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room09.ext 0x25200 0x100 0x244C0 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room10.ext 0x25300 0x100 0x244FD 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room11.ext 0x25400 0x100 0x24543 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room12.ext 0x25500 0x100 0x245C5 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room13.ext 0x25600 0x100 0x2462B 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room14.ext 0x25700 0x100 0x246B9 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room15.ext 0x25800 0x100 0x2474D 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room16.ext 0x25900 0x100 0x24813 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room17.ext 0x25A00 0x100 0x24897 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
HexString.exe -e -2b tr_%SCRIPTNAME%Room18.ext 0x25B00 0x100 0x248F3 0x20000 %T_FILENAME% %SCRIPTNAME%.tbl
java -jar Hextractor.jar -fcg %T_FILENAME%

pause
