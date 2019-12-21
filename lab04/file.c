#include "postgres.h"
#include <fmgr.h>

#ifdef PG_MODULE_MAGIC
PG_MODULE_MAGIC
#endif  // PG_MODULE_MAGIC

struct File {
	int size;
	char name[64];
}

PG_FUNCTION_INFO_V1(file_in);

Datum file_in(PG_FUNCTION_ARGS) {
	char *str = PG_GETARG_CSTRING(0);
	int size = 0;
}
