/*============================================================================
-   math.h

-   Defines the math macros and functions.

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
/* math.h standard header */
#ifndef _MATH
#define _MATH

#ifndef _YVALS
#include <yvals.h>
#endif

		/* definitions */

#ifdef	__NEAR__
#define	frexp(real,exp)	frexp_n(real,exp)
#define	modf(real,pex)	modf_n(real,pex)
#endif

#ifdef	__FAR__
#define	frexp(real,exp)	frexp_f(real,exp)
#define	modf(real,pex)	modf_f(real,pex)
#endif

		/* macros */
#define HUGE_VAL	_Hugeval._D
		/* type definitions */
typedef const union {
	unsigned short _W[4];
	double _D;
	} _Dconst;
	
		/* declarations */
double	acos(double);
double	asin(double);
double	atan(double);
double	atan2(double, double);
double	ceil(double);
double	cos(double);
double	cosh(double);
double	exp(double);
double	fabs(double);
double	floor(double);
double	fmod(double, double);
double	frexp_n(double, int __near *);
#ifndef __NOFAR__
double	frexp_f(double, int __far *);
#endif
double	ldexp(double, int);
double	log(double);
double	log10(double);
double	modf_n(double, double __near *);
#ifndef __NOFAR__
double	modf_f(double, double __far *);
#endif
double	pow(double, double);
double	sin(double);
double	sinh(double);
double	sqrt(double);
double	tan(double);
double	tanh(double);
double	_Asin(double, int);
double	_Log(double, int);
double	_Sin(double, unsigned int);
extern _Dconst __ConstNF _Hugeval;

		/* macro overrides */
#define acos(x)	_Asin(x, 1)
#define asin(x)	_Asin(x, 0)
#define cos(x)	_Sin(x, 1)
#define log(x)	_Log(x, 0)
#define log10(x)	_Log(x, 1)
#define sin(x)	_Sin(x, 0)
#endif
