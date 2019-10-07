@echo off
set T_FILENAME="TR_Aero the Acro-Bat 2 (U) [!].bin"
set SCRIPTNAME="aerotheacrobat2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 15FCF8:A0,160118:60,15FDF8:20,1BB600:A0,1BB700:20,1BBA20:60
pause
