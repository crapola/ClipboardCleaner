#include <windows.h>
int main(int,char**)
{
	OpenClipboard(0);
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
