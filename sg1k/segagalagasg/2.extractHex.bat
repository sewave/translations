@echo off
set T_FILENAME="TR_Sega Galaga (SG-1000) [!].sg"
set SCRIPTNAME="segagalagasg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 28A7:60
pause
