@echo off
set T_FILENAME="Assault City - Light Phaser Version (E) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
