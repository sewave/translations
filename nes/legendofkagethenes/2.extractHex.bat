@echo off
set T_FILENAME="TR_Legend of Kage, The (U) [!].nes"
set SCRIPTNAME="legendofkagethenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 83F0:10,A3F0:10,ABE0:30
pause
