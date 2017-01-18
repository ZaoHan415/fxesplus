/*============================================================================
-   yvals.h

-   Internal standard header

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
#ifndef _YVALS
#define _YVALS

		/* definitions */

#ifdef	__NOROMWIN__
	#pragma	NOROMWIN
	#define	__ConstNF	__far
	#define	FPUTS_NorF	fputs_f
	#define	MEMCHR_NorF	memchr_f
	#define	MEMCPY_FNorF	memcpy_ff
	#define	STRCHR_NorF	strchr_f
	#define	STRCPY_NNorF	strcpy_nf
#else
	#ifdef	__FAR__
		#define	__ConstNF	__far
		#define	FPUTS_NorF	fputs_f
		#define	MEMCHR_NorF	memchr_f
		#define	MEMCPY_FNorF	memcpy_ff
		#define	STRCHR_NorF	strchr_f
		#define	STRCPY_NNorF	strcpy_nf
	#else   /* __NEAR__ */
		#ifdef __NOFAR__
			#define	__ConstNF	__near
			#define	FPUTS_NorF	fputs_n
			#define	MEMCHR_NorF	memchr_n
			#define	MEMCPY_FNorF	memcpy_nn
			#define	STRCHR_NorF	strchr_n
			#define	STRCPY_NNorF	strcpy_nn
		#else
			#define	__ConstNF	__near
			#define	FPUTS_NorF	fputs_n
			#define	MEMCHR_NorF	memchr_n
			#define	MEMCPY_FNorF	memcpy_fn
			#define	STRCHR_NorF	strchr_n
			#define	STRCPY_NNorF	strcpy_nn
		#endif
	#endif
#endif

		/* errno properties */

#define _EDOM	33
#define _ERANGE	34
#define _EFPOS	35
#define _ERRMAX	36

		/* float properties */

#define _D0		3
#define _DBIAS	0x3fe
#define _DLONG	0
#define _DOFF	4
#define _FBIAS	0x7e
#define _FOFF	7
#define _FRND	1
#define _LBIAS	0x3fe
#define _LOFF	4

		/* integer properties */

#define _C2		1
#define _CSIGN	1
#define _ILONG	0
#define _MBMAX	2
/*
typedef unsigned short _Wchart;
*/

		/* pointer properties */

#define _NULL	0

#ifdef	__MS__
typedef int _Ptrdifft;
typedef unsigned int _Sizet;
#endif

#ifdef	__ML__
typedef long _Ptrdifft;
typedef unsigned long _Sizet;
#endif

		/* setjmp properties */
#ifdef	__MS__
#define _NSETJMP	11		/* PSW PC SP FP DSR val ER4 ER6 ER8 ER10 ER12 */
#endif
#ifdef	__ML__
#define _NSETJMP	12		/* PSW PC SP FP DSR CSR val ER4 ER6 ER8 ER10 ER12 */
#endif

		/* signal properties */

#define _SIGABRT	6
#define _SIGMAX		32

		/* stdio properties */

#define _FNAMAX	64
#define _FOPMAX	8
#define _TNAMAX	8

		/* stdlib properties */

#define _EXFAIL	1

		/* storage alignment properties */

#define _AUPBND 1U
#define _ADNBND 1U
#define _MEMBND	1U

		/* time properties */

#define _CPS	1
#define _TBIAS	((70 * 365LU + 17) * 86400)

#endif


/* End of File */
