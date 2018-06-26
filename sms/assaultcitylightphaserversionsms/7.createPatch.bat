@echo off
set T_FILENAME="TR_Assault City - Light Phaser Version (E) [!].sms"
set S_FILENAME="Assault City - Light Phaser Version (E) [!].sms"
set SCRIPTNAME="assaultcitylightphaserversionsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
