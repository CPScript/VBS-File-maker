WScript.Sleep(1)
a=MsgBox("Your trying to run a Prgram, Would you like to Run this?", 3+48, "Warning!")

DIM FSO
DIM fso, MyFile
SET FSO=CreateObject("Scripting.FileSystemObject")
FSO.CreateFolder("C:\Users\Peter\Folder\")
FSO.CreateFolder("C:\Users\Peter\Folder\Alert\")
FSO.CreateTextFile "Alert.txt"
Set MyFile = fso.CreateTextFile("Alert.txt", True)
MyFile.WriteLine("SUCSESS")
'Use later to add folder into Program Files (86*) OR MOVE FOLDERS INTO OTHER FOLDERS
FSO.MoveFile "Alert.txt","C:\Users\Peter\Folder\Alert\"


CreateObject("Wscript.Shell").Run """C:\Users\Peter\Folder\Alert\Alert.txt""", 1, True
