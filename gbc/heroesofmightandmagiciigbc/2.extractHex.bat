@echo off
set T_FILENAME="TR_Heroes of Might and Magic II (USA) (En,Fr,De).gbc"
set SCRIPTNAME="heroesofmightandmagiciigbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FED09:10,FEDD1:18,FEEC9:18
pause
