@echo off
set T_FILENAME="Spider-Man vs. the Kingpin (UE) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
