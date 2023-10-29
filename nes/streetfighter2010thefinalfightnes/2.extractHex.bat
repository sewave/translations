@echo off
set T_FILENAME="TR_Street Fighter 2010 - The Final Fight (USA).nes"
set SCRIPTNAME="streetfighter2010thefinalfightnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C3B0:380,3C930:30,3CA30:30,36060:40,361A0:60,362A0:70,363F0:20,3BA80:10,3BB50:70,294A0:20,295A0:20,296A0:20
pause
