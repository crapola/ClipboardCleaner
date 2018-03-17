#include <windows.h>
int WINAPI WinMain(HINSTANCE,HINSTANCE,LPSTR,int)
{
	OpenClipboard(NULL);
	BOOL ok=EmptyClipboard();
	//ok=FALSE;
	if (ok==TRUE)
	{
		MessageBox(NULL,"Clipboard has been cleared.","Clipboard Cleaner",MB_OK|MB_ICONINFORMATION);
	}
	else
	{
		MessageBox(NULL,"EmptyClipboard() failed.","Clipboard Cleaner",MB_OK|MB_ICONERROR);
	}
	CloseClipboard();
	return 0;
}
