@echo off
set T_FILENAME="Aztec Adventure - The Golden Road to Paradise (UE) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
