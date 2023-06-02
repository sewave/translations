@echo off
set T_FILENAME="TR_Hudson's Adventure Island (USA).nes"
set SCRIPTNAME="hudsonsadventureislandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FEC0:10,FF80:10,FF20:10,86D0:10,87D0:10,A6D0:10,A7D0:10,C6D0:10,C7D0:10,E7D0:10
pause
