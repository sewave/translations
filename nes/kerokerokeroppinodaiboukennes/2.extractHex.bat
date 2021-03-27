@echo off
set T_FILENAME="TR_Kero Kero Keroppi no Daibouken (Japan) [T+ENG].nes"
set SCRIPTNAME="kerokerokeroppinodaiboukennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 84C0:10,A4C0:10,C780:A0,D890:30,D950:10,B290:100,9820:30,B820:30,B4A0:60
pause
