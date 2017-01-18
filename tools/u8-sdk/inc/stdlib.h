/*============================================================================
-   stdlib.h

-   Defines the stdlib macros and functions

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
#ifndef _STDLIB
#define _STDLIB

#ifndef _YVALS
#include <yvals.h>
#endif

		/* macros */

#define NULL		_NULL
#define EXIT_FAILURE	_EXFAIL
#define RAND_MAX	32767

		/* type definitions */

#ifndef _SIZET
#define _SIZET
typedef _Sizet size_t;
#endif

		/* Access mode */

#ifdef __NEAR__
#define	_Cmpfun(arg1, arg2)	_Cmpfun_nn(arg1, arg2)
#define	atof(s)	atof_n(s)
#define	atoi(s)	atoi_n(s)
#define	atol(s)	atol_n(s)
#define bsearch(key, base, nelem, size, cmp)\
		bsearch_nn(key, base, nelem, size, cmp)
#define itoa(num, s, base)	itoa_n(num, s, base)
#define ltoa(num, s, base)	ltoa_n(num, s, base)
#define	qsort(base, n, size, cmp)	qsort_n(base, n, size, cmp)
#define	strtod(s, endptr)	strtod_n(s, endptr)
#define	strtol(s, endptr, base)	strtol_n(s, endptr, base)
#define	strtoul(s, endptr, base)	strtoul_n(s, endptr, base)
#define ultoa(num, s, base)	ultoa_n(num, s, base)
#define	_Stod(s, endptr)	_Stod_n(s, endptr)
#define	_Stoul(s, endptr, base)	_Stoul_n(s, endptr, base)
#define _Ultoa(num, s, base)	_Ultoa_n(num, s, base)
#define malloc(size)	malloc_n(size)
#define calloc(nelem, size)	calloc_n(nelem, size)
#define	free(ptr)	free_n(ptr)
#define realloc(ptr, size)	realloc_n(ptr, size)
#endif

#ifdef __FAR__
#define	_Cmpfun(arg1, arg2)	_Cmpfun_ff(arg1, arg2)
#define	atof(s)	atof_f(s)
#define	atoi(s)	atoi_f(s)
#define	atol(s)	atol_f(s)
#define bsearch(key, base, nelem, size, cmp)\
		bsearch_ff(key, base, nelem, size, cmp)
#define itoa(num, s, base)	itoa_f(num, s, base)
#define ltoa(num, s, base)	ltoa_f(num, s, base)
#define	qsort(base, n, size, cmp)	qsort_f(base, n, size, cmp)
#define	strtod(s, endptr)	strtod_f(s, endptr)
#define	strtol(s, endptr, base)	strtol_f(s, endptr, base)
#define	strtoul(s, endptr, base)	strtoul_f(s, endptr, base)
#define ultoa(num, s, base)	ultoa_f(num, s, base)
#define	_Stod(s, endptr)	_Stod_f(s, endptr)
#define	_Stoul(s, endptr, base)	_Stoul_ff(s, endptr, base)
#define _Ultoa(num, s, base)	 _Ultoa_f(num, s, base)
#define malloc(size)	malloc_f(size)
#define calloc(nelem, size)	calloc_f(nelem, size)
#define	free(ptr)	free_f(ptr)
#define realloc(ptr, size)	realloc_f(ptr, size)
#endif

typedef struct {
	int quot;
	int rem;
	} div_t;
typedef struct {
	long quot;
	long rem;
	} ldiv_t;

typedef int _Cmpfun_nn(const void __near *, const void __near *);
#ifndef __NOFAR__
typedef int _Cmpfun_nf(const void __near *, const void __far *);
typedef int _Cmpfun_fn(const void __far *, const void __near *);
typedef int _Cmpfun_ff(const void __far *, const void __far *);
#endif

		/* declarations */

int abs(int);

double atof_n(const char __near *);
#ifndef __NOFAR__
double atof_f(const char __far *);
#endif

int atoi_n(const char __near *);
#ifndef __NOFAR__
int atoi_f(const char __far *);
#endif

long atol_n(const char __near *);
#ifndef __NOFAR__
long atol_f(const char __far *);
#endif

void __near * bsearch_nn(const void __near *, const void __near *, size_t, size_t, _Cmpfun_nn *);
#ifndef __NOFAR__
void __far * bsearch_nf(const void __near *, const void __far *, size_t, size_t, _Cmpfun_nf *);
void __near * bsearch_fn(const void __far *, const void __near *, size_t, size_t, _Cmpfun_fn *);
void __far * bsearch_ff(const void __far *, const void __far *, size_t, size_t, _Cmpfun_ff *);
#endif

div_t div(int, int);

long labs(long);

ldiv_t ldiv(long, long);

void qsort_n(void __near *, size_t, size_t, _Cmpfun_nn *);
#ifndef __NOFAR__
void qsort_f(void __far *, size_t, size_t, _Cmpfun_ff *);
#endif

int rand(void);

void srand(unsigned int);

double strtod_n(const char __near *, char __near * __near *);
#ifndef __NOFAR__
double strtod_f(const char __far *, char __far * __far *);
#endif


long strtol_n(const char __near *, char __near * __near *, int);
#ifndef __NOFAR__
long strtol_f(const char __far *, char __far * __far *, int);
#endif

unsigned long strtoul_n(const char __near *, char  __near * __near *, int);
#ifndef __NOFAR__
unsigned long strtoul_f(const char __far *, char  __far * __far *, int);
#endif

double _Stod_n(const char __near *, char __near * __near *);
#ifndef __NOFAR__
double _Stod_f(const char __far *, char __far * __far *);
#endif


unsigned long _Stoul_n(const char __near *, char __near * __near *, int);
#ifndef __NOFAR__
unsigned long _Stoul_f(const char __far *, char __far * __far *, int);
#endif

void __near * malloc_n(size_t);
#ifndef __NOFAR__
void __far * malloc_f(size_t);
#endif

void __near * calloc_n(size_t nelem, size_t);
#ifndef __NOFAR__
void __far * calloc_f(size_t nelem, size_t);
#endif

void free_n(void __near *);
#ifndef __NOFAR__
void free_f(void __far *);
#endif

void __near * realloc_n(void __near *, size_t);
#ifndef __NOFAR__
void __far * realloc_f(void __far *, size_t);
#endif

		/* macro overrides */

#define atof_n(s)	_Stod_n(s, 0)
#ifndef __NOFAR__
#define atof_f(s)	_Stod_f(s, 0)
#endif

#define atoi_n(s)	(int)strtol_n(s, 0, 10)
#ifndef __NOFAR__
#define atoi_f(s)	(int)strtol_f(s, 0, 10)
#endif

#define atol_n(s)	(long)strtol_n(s, 0, 10)
#ifndef __NOFAR__
#define atol_f(s)	(long)strtol_f(s, 0, 10)
#endif

#define srand(seed)				\
	{					\
	extern	unsigned long _Randseed;	\
	_Randseed = (seed);			\
	}

#define strtod_n(s, endptr)	_Stod_n(s, endptr)
#ifndef __NOFAR__
#define strtod_f(s, endptr)	_Stod_f(s, endptr)
#endif

#define strtoul_n(s, endptr, base)	_Stoul_n(s, endptr, base)
#ifndef __NOFAR__
#define strtoul_f(s, endptr, base)	_Stoul_f(s, endptr, base)
#endif

#endif
/* End of File */
