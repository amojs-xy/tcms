start /d"G:\workspace\golang\tcms\medicine_service" medicine_service.exe
start /d"G:\workspace\golang\tcms\medicine_api" medicine_api.exe
start cmd /k "cd /d G:\workspace\golang\tcms\tcms_client&&npm run dev"
