@echo off
echo Installazione dipendenze Capacitor...
call npm install
echo Creazione progetto Android...
call npx cap add android
call npx cap sync android
echo Compilazione APK...
cd android
call gradlew.bat assembleDebug
echo.
echo FATTO! Trovi il tuo APK in:
echo android\app\build\outputs\apk\debug\app-debug.apk
pause
