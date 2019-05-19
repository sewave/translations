@echo off
set T_FILENAME="TR_Joe & Mac Caveman Ninja (U) [!].bin"
set SCRIPTNAME="joemaccavemanninjasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DFC5A:60,FEFE8:20,FEDE8:20,FEA88:80,FE848:60,FE4C8:60
pause
