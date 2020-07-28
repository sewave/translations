@echo off
set T_FILENAME="TR_BattleTech - A Game of Armored Combat (USA).md"
set SCRIPTNAME="battletechagameofarmoredcombatsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BE4C0:100,BED20:100,BF420:C0,BF8E0:100,BFFC0:80,BE7C0:20,BF020:20,BFBE0:20,B7260:200,B79A0:300,BC320:200,31964:20
pause
