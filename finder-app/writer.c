


#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, char *argv[])
{
    // Setup syslog logging for your utility using the LOG_USER facility.
    openlog("writefile", LOG_PID | LOG_CONS, LOG_USER);

    // Verify args
    if (argc != 3)
    {
        syslog(LOG_ERR, "Usage: %s writefile writestr\n", argv[0]);
        return 1;
    }

    // Try to open file
    FILE *fp = fopen(argv[1], "w");
    if (fp == NULL)
    {
        syslog(LOG_ERR, "Error: could not open file %s\n", argv[1]);
        return 2;
    }

    syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
    fprintf(fp, "%s\n", argv[2]);
    fclose(fp);

    // Print a success message
    return 0;
}