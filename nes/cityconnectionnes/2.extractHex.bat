@echo off
set T_FILENAME="TR_City Connection (U) [!].nes"
set SCRIPTNAME="cityconnectionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FDE0:30,ABC0:10,8BC0:10,DF20:50
pause
