Set objShell = WScript.CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject") 
strDesktop = objShell.SpecialFolders("Desktop")
Set lnk= objShell.CreateShortcut(strDesktop+"\S4.lnk")
CurrentDirectory = objFSO.GetAbsolutePathName(".")
   lnk.TargetPath = CurrentDirectory &"\s4.exe"
   lnk.Arguments = ""
   lnk.Description = "S4"
   lnk.HotKey = "ALT+CTRL+F"
   lnk.IconLocation =CurrentDirectory &"\s4.exe, 0"
   lnk.WindowStyle = "1"
   lnk.WorkingDirectory = AutoActPath
   lnk.Save
   'Clean up 
   Set lnk = Nothing