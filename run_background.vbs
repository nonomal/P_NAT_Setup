'�϶��ļ���vbs�ϴ򿪿��Ժ�̨����
Dim WshShell
Set WshShell = WScript.CreateObject("Wscript.Shell")
WshShell.CurrentDirectory = WScript.Arguments(0) & "\.."
For Each ar In WScript.Arguments
filename=ar
Next
'Msgbox filename
'0��ʾ��̨ true��ʾ�ȴ����н���
a = WshShell.run (filename,0,true)

'���к�д���ļ�
Dim fso,tf
Set fso =  CreateObject("Scripting.FileSystemObject")
'True-������Ա��´�д�븲��
Set tf = fso.CreateTextFile("r.txt", True) 
tf.WriteLine(a)
tf.close
