@echo off
set T_FILENAME="TR_Solomon no Kagi - Oujo Rihita no Namida (J) [!].sms"
set SCRIPTNAME="solomonnokagioujorihitanonamidasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 12F20:60
pause
