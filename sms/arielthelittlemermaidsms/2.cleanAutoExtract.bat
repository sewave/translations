@echo off
set T_FILENAME="Ariel - The Little Mermaid (B).sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
