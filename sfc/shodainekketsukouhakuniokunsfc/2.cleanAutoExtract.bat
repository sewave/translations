@echo off
set T_FILENAME="Shodai Nekketsu Kouha Kunio-kun (J) [T+ENG].smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
