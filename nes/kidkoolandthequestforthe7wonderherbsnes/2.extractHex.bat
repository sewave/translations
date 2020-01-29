@echo off
set T_FILENAME="TR_Kid Kool and the Quest for the 7 Wonder Herbs (U) [!].nes"
set SCRIPTNAME="kidkoolandthequestforthe7wonderherbsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5BC0:50,5EE0:30,5F70:10,73C0:200,7FC0:40,1180:80,3A90:100
pause
