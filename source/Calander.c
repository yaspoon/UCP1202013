#include <stdlib.h>
#include "Calander.h"
#include "gui.h"
#include "Common.h"

#define TITLE "UCP120 Calander Brock York 14840261"

int main(int argc, char* argv[])
{
    returnCode retVal = okay;

    Window* theWindow = NULL;

    if(setupGui(&theWindow) == okay)
    {

        switch(cleanup(&theWindow))
        {
        case okay:
            printf("Calander cleanup okay, exiting");
            break;
        case error:
            fprintf(stderr, "Failed to cleanup, memory may not have been freed before exiting\n");
            retVal = error;
            break;
        }
    }
    else
    {

    }

    return 0;
}

int setupGui(Window** mainWindow)
{
    returnCode retVal = okay;

    (*window) = createWindow(TITLE);

    return retVal;

}

int cleanup(Window* mainWindow)
{
    returnCode retVal = okay;

    freeWindow(mainWindow);

    addButton((*mainWindow), "Load", NULL, NULL);

    return retVal;
}
