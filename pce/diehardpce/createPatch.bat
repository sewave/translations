@echo off 
set T_FILENAME="TR_Die Hard (Japan) [T+ENG].pce"
set S_FILENAME="Die Hard (Japan).pce"
set SCRIPTNAME="diehardpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
