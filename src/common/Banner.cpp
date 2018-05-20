#include "Banner.h"
#include "GitRevision.h"
#include "StringFormat.h"

void Trinity::Banner::Show(char const* applicationName, void(*log)(char const* text), void(*logExtraInfo)())
{
    log(Trinity::StringFormat("%s (%s)", GitRevision::GetFullVersion(), applicationName).c_str());
    log("<Ctrl-C> to stop.\n");
    log("  _   _   _   _");  
    log("/ \ / \ / \ / \ ");
    log("(N | E | W | B )");
    log("\_/ \_/ \_/ \_/"); 
    log("https://newb.fr n");

    if (logExtraInfo)
        logExtraInfo();
}
