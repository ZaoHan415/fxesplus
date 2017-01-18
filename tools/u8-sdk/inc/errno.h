/*============================================================================
-   errno.h

-   Defines the errno macros.

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
/* errno.h standard header */
#ifndef _ERRNO
#define _ERRNO

#ifndef _YVALS
#include <yvals.h>
#endif
		/* error codes */
#define EDOM	_EDOM
#define ERANGE	_ERANGE
#define EFPOS	_EFPOS
	/* ADD YOURS HERE */
#define _NERR	_ERRMAX	/* one more than last code */
		/* declarations */
extern volatile int errno;
#endif
