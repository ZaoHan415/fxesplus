/*============================================================================
-   float.h

-   Defines the float macros.

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
/* float.h standard header -- IEEE 754 version */
#ifndef _FLOAT
#define _FLOAT

#ifndef _YVALS
#include <yvals.h>
#endif
		/* double properties */
#define DBL_DIG 	15
#define DBL_EPSILON	2.2204460492503131e-016
#define DBL_MANT_DIG	53
/*#define DBL_MAX	1.7000000000000000e+308*/
#define DBL_MAX		1.7976931348623157e+308		/*2000.10.17*/
#define DBL_MAX_10_EXP	308
#define DBL_MAX_EXP	1024
#define DBL_MIN 	2.2250738585072014e-308
#define DBL_MIN_10_EXP	(-307)
#define DBL_MIN_EXP	(-1021)

#define FLT_DIG 	6
#define FLT_EPSILON	1.192092896e-07F
#define FLT_MANT_DIG	24
#define FLT_MAX 	3.402823466e+38F
#define FLT_MAX_10_EXP	38
#define FLT_MAX_EXP	128
#define FLT_MIN 	1.175494351e-38F
#define FLT_MIN_10_EXP	(-37)
#define FLT_MIN_EXP	(-125)
		/* common properties */
#define FLT_RADIX		2
#define FLT_ROUNDS		_FRND
		/* long double properties */
#define LDBL_DIG 	15
#define LDBL_EPSILON	2.2204460492503131e-016
#define LDBL_MANT_DIG	53
/*#define LDBL_MAX 	1.7000000000000000e+308*/
#define LDBL_MAX	1.7976931348623157e+308		/*2000.10.17*/
#define LDBL_MAX_10_EXP	308
#define LDBL_MAX_EXP	1024
#define LDBL_MIN 	2.2250738585072014e-308
#define LDBL_MIN_10_EXP	(-307)
#define LDBL_MIN_EXP	(-1021)
#endif
