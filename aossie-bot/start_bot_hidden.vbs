Set WshShell = CreateObject("WScript.Shell")
Dim botDir
botDir = "E:\skill-bot(ask ai)\aossie-bot"
WshShell.Run "cmd /c cd /d """ & botDir & """ && venv\Scripts\python.exe bot.py", 0, False
