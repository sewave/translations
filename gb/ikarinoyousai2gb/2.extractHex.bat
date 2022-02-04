@echo off
set T_FILENAME="TR_Ikari no Yousai 2 (Japan) [T+ENG].gb"
set SCRIPTNAME="ikarinoyousai2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11510:10,11610:10,11810:10,11A80:80,11D30:C0,14990:10,15340:20,141A0:10,14260:30,154C0:20,149C0:80
pause
