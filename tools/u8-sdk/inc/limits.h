/*============================================================================
-   limits.h

-   Defines the limits macros.

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
/* limits.h standard header -- 8-bit version */
#ifndef _LIMITS
#define _LIMITS

#ifndef _YVALS
#include <yvals.h>
#endif
		/* char properties */
#define CHAR_BIT	8
#ifdef __UNSIGNEDCHAR__
#define CHAR_MAX	255
#define CHAR_MIN	0
#else
#define CHAR_MAX	127
#define CHAR_MIN	(-127-_C2)
#endif
		/* int properties */
#define INT_MAX		32767
#define INT_MIN		(-32767-_C2)
#define UINT_MAX	65535U

		/* long properties */
#define LONG_MAX	2147483647L
#define LONG_MIN	(-2147483647L-_C2)

		/* multibyte properties */
#define MB_LEN_MAX	_MBMAX

		/* signed char properties */
#define SCHAR_MAX	127
#define SCHAR_MIN	(-127-_C2)

		/* short properties */
#define SHRT_MAX	32767
#define SHRT_MIN	(-32767-_C2)

		/* unsigned properties */
#define UCHAR_MAX	255U
#define ULONG_MAX	4294967295UL
#define USHRT_MAX	65535U
#endif
