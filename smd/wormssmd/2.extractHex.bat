@echo off
set T_FILENAME="TR_Worms (E) [!].bin"
set SCRIPTNAME="wormssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1AADFC:20,1AAD7C:40,193074:140,192154:200,191254:200,18FE54:200
pause
