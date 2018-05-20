#include "Banner.h"
#include "GitRevision.h"
#include "StringFormat.h"

void Trinity::Banner::Show(char const* applicationName, void(*log)(char const* text), void(*logExtraInfo)())
{
    log(Trinity::StringFormat("%s (%s)", GitRevision::GetFullVersion(), applicationName).c_str());
    log("<Ctrl-C> to stop.\n");
    
 log("_   _ ________          ______   ______ _____");  
 log("| \ | |  ____\ \        / /  _ \ |  ____|  __ \/"); 
 log("|  \| | |__   \ \  /\  / /| |_) || |__  | |__) |");
 log("| . ` |  __|   \ \/  \/ / |  _ < |  __| |  _  /"); 
 log("| |\  | |____   \  /\  /  | |_) || |    | | \ \/"); 
 log("|_| \_|______|   \/  \/   |____(_)_|    |_|  \_\/");
 log("https://newb.fr");

    if (logExtraInfo)
        logExtraInfo();
}
