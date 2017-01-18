/*============================================================================
-   stddef.h

-   Defines the stddef macros.

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
/* stddef.h standard header */

#ifndef _STDDEF
#define _STDDEF

#ifndef _YVALS
#include <yvals.h>
#endif

		/* macros */

#define NULL	_NULL
#define offsetof(T, member)	((_Sizet)&((T *)0)->member)
		/* type definitions */
#ifndef _SIZET
#define _SIZET
typedef _Sizet size_t;
#endif
typedef _Ptrdifft ptrdiff_t;
#endif

