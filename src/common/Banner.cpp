#include "Banner.h"
#include "GitRevision.h"
#include "StringFormat.h"

void Trinity::Banner::Show(char const* applicationName, void(*log)(char const* text), void(*logExtraInfo)())
{
    log(Trinity::StringFormat("%s (%s)", GitRevision::GetFullVersion(), applicationName).c_str());
    log("<Ctrl-C> to stop.\n");
    
cout << " "
	<< endl;
	setcolor(9);
	cout << "mmmmmmmmmmmmmmmmmmmmmm           sssssssssssssssss" << endl;
	cout << "mmmmmmmmmmmmmmmmmmmm            `sssssssssssssssss" << endl;
	cout << "mmmmmmmmmmmmmmmmmmm              sssssssssssssssss" << endl;
	setcolor(7);
	cout << "mmmmmmmmmmmmmmmmmmm               ssssssssssssssss" << endl;
	cout << "mmmmmmmmmmmmmmmmmmmm              ssssssssssssssss" << endl;
	cout << "mmmmmmmmmmmmm mmmmmm               sssssssssssssss" << endl;
	setcolor(12);
	cout << "mmmmmmmmmmm m + ms                 sssssssssssssss" << endl;
	cout << "mmmmmmmmmmmmm    mmm              ssssssssssssssss" << endl;
	cout << "mmmmmmmmmmmm mmmmm  m             ssssssssssssssss" << endl;
	cout << "mmmmmmmmmmmmmmmm    mm       sssssssssssssssssssss" << endl;
	cout << " "<< endl;

    if (logExtraInfo)
        logExtraInfo();
}
