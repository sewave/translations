@echo off
set T_FILENAME="TR_Juuouki (J) [T+Eng1.00_akadewboy].nes"
set SCRIPTNAME="juuoukines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 30110:80,31110:80,32110:80,33110:80,34110:80,35110:80,36110:80,37110:80,3F670-3F870
pause
