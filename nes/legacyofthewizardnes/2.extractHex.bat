@echo off
set T_FILENAME="TR_Legacy of the Wizard (USA).nes"
set SCRIPTNAME="legacyofthewizardnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 25410:100,2DE10:100,27910:20,28010:100,258A0:70,25C20:10,26630:60,26710:10,28EC0:40,2F510:300
pause
