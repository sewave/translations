@echo off
set T_FILENAME="TR_McDonald's Treasure Land Adventure (USA).md"
set SCRIPTNAME="mcdonaldstreasurelandadventuresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D743E:10,D751E:50,D75DE:10,D76AE:10,D776E:10,D777E:10,A0C80:40,A1200:40
pause
