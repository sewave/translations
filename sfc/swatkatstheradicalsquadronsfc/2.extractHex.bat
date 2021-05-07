@echo off
set T_FILENAME="TR_SWAT Kats - The Radical Squadron (USA).sfc"
set SCRIPTNAME="swatkatstheradicalsquadronsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A7570:40,A7770:40,A79B0:20,A7BB0:20,A82F0:60,A83B0:40
pause
