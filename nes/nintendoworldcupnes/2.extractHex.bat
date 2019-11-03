@echo off
set T_FILENAME="TR_Nintendo World Cup (USA).nes"
set SCRIPTNAME="nintendoworldcupnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 33810:200,33C10:200,26010:E00,20210:600,2EA10:600,26F10:F00,2CF10:200
pause
