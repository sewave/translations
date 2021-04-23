@echo off
set T_FILENAME="TR_Splatterhouse - Wanpaku Graffiti (Japan) [T+ENG].nes"
set SCRIPTNAME="splatterhousewanpakugraffitines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 35C90:A0,2F410:10,2F610:10,2F840:60,2F710:80,36B30:80,3C390:80,3F410:400,28FA0:10,316F0:C0,3DA60:50
pause
