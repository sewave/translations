@echo off
set T_FILENAME="TR_Terra Cresta II - Mandoler no Gyakushuu (Japan).pce"
set SCRIPTNAME="terracrestaiimandolernogyakushuupce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3D208:200,3D908:100,3DB08:100,5E000:80,5F400:10,5F600:100,5F8B0:50,5F9B0:50,5FCB0:10,5FDB0:10,3B000:200,223B0:100
pause
