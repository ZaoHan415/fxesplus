/*============================================================================
-   stdarg.h

-   Defines the stdarg macros

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
/* stdarg.h standard header */

#ifndef _STDARG
#define _STDARG

#ifndef _YVALS
#include <yvals.h>
#endif

		/* type definitions */

typedef char __near *va_list;

		/* macros */

#define va_arg(ap, T)	\
    ((ap) += _Bnd(T, _AUPBND), *(T __near *)((ap) - _Bnd(T, _ADNBND)))
#define va_end(ap)		(void)0
#define va_start(ap, A)	\
	(void)((ap) = (char __near *)&(A) + _Bnd(A, _AUPBND))
#define _Bnd(X, bnd)	(sizeof (X) + (bnd) & ~(bnd))
#endif
