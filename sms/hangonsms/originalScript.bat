@echo off 
set T_FILENAME="Hang-On (E) [!].sms"
set SCRIPTNAME="hangonsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt 000002A2-000002A8-00,00000727-00000739-00,0000073A-00000749-00,000009C1-000009C5-00,00003CA9-00003D0A-00,ADA-B4B-FF
pause 
