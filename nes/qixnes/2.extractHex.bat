@echo off
set T_FILENAME="TR_QIX (USA).nes"
set SCRIPTNAME="qixnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8410:10,8550:10,9540:400
pause
