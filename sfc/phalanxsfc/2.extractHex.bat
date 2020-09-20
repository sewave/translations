@echo off
set T_FILENAME="TR_Phalanx (USA).sfc"
set SCRIPTNAME="phalanxsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BDA13:30,BDAB3:30,BDAF3:50,BDD53:40,BDE53:40,BDB43:10
pause
