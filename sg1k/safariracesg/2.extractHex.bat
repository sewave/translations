@echo off
set T_FILENAME="TR_Safari Race (SG-1000).sg"
set SCRIPTNAME="safariracesg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 68C8:300
pause
