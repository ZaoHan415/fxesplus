/*============================================================================
-   signal.h

-   Defines the signal macros and functions

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
/*  signal.h standard header */
#ifndef _SIGNAL
#define _SIGNAL

#ifndef _YVALS
#include <yvals.h>
#endif

#ifdef __NEAR__
#define signal(sg,fn)	signal_n(sg,fn)
#endif
#ifdef __FAR__
#define signal(sg,fn)	signal_n(sg,fn)
#endif

		/* type definition */
typedef int sig_atomic_t ;
typedef void _Sigfun(int) ;
		/* signal code */
#define SIGABRT _SIGABRT
#define SIGINT  2
#define SIGILL	4
#define SIGFPE	8
#define SIGSEGV	11
#define SIGTERM	15
#define _NSIG	_SIGMAX			/* one more than last code */
		/* signal return values */
#define SIG_DFL	(_Sigfun *)0
#define SIG_ERR	(_Sigfun *)-1
#define SIG_IGN	(_Sigfun *)1
		/* declarations */
int raise(int) ;
_Sigfun *signal_n(int, _Sigfun *) ;
_Sigfun *signal_f(int, _Sigfun *) ;
#endif
