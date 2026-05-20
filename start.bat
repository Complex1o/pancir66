@echo off
title Pancir66 - Local Server
echo ========================================
echo  Pancir66 - Детейлинг студия
echo  Запуск локального сервера...
echo ========================================
echo.

REM Check Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ОШИБКА] Python не найден!
    echo Установите Python с python.org
    echo.
    pause
    exit /b
)

echo [OK] Python найден
echo [OK] Сервер запускается на http://localhost:8000
echo.
start http://localhost:8000
python -m http.server 8000

pause
