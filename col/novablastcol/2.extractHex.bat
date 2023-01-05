@echo off
set T_FILENAME="TR_Nova Blast (1983) (Imagic) [!].col"
set SCRIPTNAME="novablastcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22EA:20,26F2:8
pause
