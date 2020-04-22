@echo off
set T_FILENAME="TR_Double Strike (AVE) (V1.1) [!].nes"
set SCRIPTNAME="doublestrikenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8010:10,8C10:200,8E80:10,B960:10,D960:10,F960:10,9CB0:80
pause
