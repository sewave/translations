@echo off
set T_FILENAME="TR_Shodai Nekketsu Kouha Kunio-kun (J) [T+ENG].smc"
set S_FILENAME="Shodai Nekketsu Kouha Kunio-kun (J).smc"
set SCRIPTNAME="shodainekketsukouhakuniokunsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
