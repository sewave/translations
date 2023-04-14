@echo off
set T_FILENAME="TR_Terra Cognita (1986)(Codemasters).tzx"
set SCRIPTNAME="terracognitatzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 
pause
