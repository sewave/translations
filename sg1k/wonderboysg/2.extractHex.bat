@echo off
set T_FILENAME="TR_Wonder Boy (SG-1000) [!].sg"
set SCRIPTNAME="wonderboysg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 72AD:08
pause
