@echo off
set T_FILENAME="TR_Metal Gear (USA).nes"
set SCRIPTNAME="metalgearnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C8EA:8,CB6A:8,CBFA:8,DB5E:18,DBFE:8,E8F3:8,EB73:8,EC03:8,87EB:8,8A6B:8,8AFB:8,A7F3:8,AA73:8,AB03:8,8D1B:50,EE22:50,97EF:10,9A6F:10,9AFF:10,CE6A:50
pause
