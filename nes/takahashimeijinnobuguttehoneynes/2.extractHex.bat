@echo off
set T_FILENAME="TR_Takahashi Meijin no Bugutte Honey (Japan).nes"
set SCRIPTNAME="takahashimeijinnobuguttehoneynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 25A40:10,24580:10,23580:10,21580:10,21440:10,23440:10,24440:10
pause
