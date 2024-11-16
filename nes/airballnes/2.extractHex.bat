@echo off
set T_FILENAME="TR_Airball (Unknown) (Proto 2).nes"
set SCRIPTNAME="airballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F638:10,F690:10,F7D8:8,F358:20,F418:40,CBB0:30
pause
