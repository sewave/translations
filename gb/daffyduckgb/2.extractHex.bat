@echo off
set T_FILENAME="TR_Daffy Duck (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="daffyduckgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B156:60,1B73C:10,14A76:10
pause
