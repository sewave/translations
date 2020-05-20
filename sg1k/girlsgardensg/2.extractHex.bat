@echo off
set T_FILENAME="TR_Girl's Garden (SG-1000).sg"
set SCRIPTNAME="girlsgardensg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5334:10,540C:10,5464:10,453E:80,471E:40
pause
