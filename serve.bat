@echo off
echo Iniciando servidor local en http://localhost:8080
echo Presiona Ctrl+C para detener.
echo.

where python >nul 2>&1
if %errorlevel%==0 (
  start "" "http://localhost:8080"
  python -m http.server 8080
  goto :end
)

where python3 >nul 2>&1
if %errorlevel%==0 (
  start "" "http://localhost:8080"
  python3 -m http.server 8080
  goto :end
)

where node >nul 2>&1
if %errorlevel%==0 (
  start "" "http://localhost:8080"
  npx serve . --listen 8080
  goto :end
)

echo No se encontro Python ni Node.js.
echo Abri index.html directamente en Chrome o Edge (funciona sin servidor).
echo.
pause

:end
