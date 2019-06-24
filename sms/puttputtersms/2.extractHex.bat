@echo off
set T_FILENAME="TR_Putt & Putter (E) [!].sms"
set SCRIPTNAME="puttputtersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A7C0:20,E7C0:20,15F40:40,EBE0:200,ABE0:200,A400:40,E400:40
pause
