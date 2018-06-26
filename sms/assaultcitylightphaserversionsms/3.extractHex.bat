@echo off
set T_FILENAME="TR_Assault City - Light Phaser Version (E) [!].sms"
set SCRIPTNAME="assaultcitylightphaserversionsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
