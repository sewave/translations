@echo off
set T_FILENAME="TR_Shodai Nekketsu Kouha Kunio-kun (J) [T+ENG].smc"
set SCRIPTNAME="shodainekketsukouhakuniokunsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F8A10:D0,F8B60:60
pause
