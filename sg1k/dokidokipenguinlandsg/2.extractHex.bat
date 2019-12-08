@echo off
set T_FILENAME="TR_Doki Doki Penguin Land (SG-1000).sg"
set SCRIPTNAME="dokidokipenguinlandsg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5F40:100
pause
