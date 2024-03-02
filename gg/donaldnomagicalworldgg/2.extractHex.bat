@echo off
set T_FILENAME="TR_Donald no Magical World (Japan) (En,Ja).gg"
set SCRIPTNAME="donaldnomagicalworldgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 43260:20,5EDA0:300,12460:40,126C0:20,12780:40,20800:200,1D800:140
pause
