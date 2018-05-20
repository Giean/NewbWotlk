#include "Banner.h"
#include "GitRevision.h"
#include "StringFormat.h"

void Trinity::Banner::Show(char const* applicationName, void(*log)(char const* text), void(*logExtraInfo)())
{
    log(Trinity::StringFormat("%s (%s)", GitRevision::GetFullVersion(), applicationName).c_str());
    log("<Ctrl-C> to stop.\n");	
log("#                     ##");                                             
log("##                    ##");                                             
log("###  ## ######## ##   ## #######     ###### ####### #######  ########");
log("#### ##          ## # ##       ##   ###           ##      ##");         
log("#######  ####### #######  ######    ###      ##   ## ######   #######");
log("### ###  ###     ### ###  ###  ##   ###      ##   ## ##  ##   ###");    
log("###  ##  ####### ##   ##  ######     ######   #####  ##   ##  #######");
log("      #");          
    log("https://newb.fr");

    if (logExtraInfo)
        logExtraInfo();
}
