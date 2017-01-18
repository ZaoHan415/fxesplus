/*============================================================================
-   setjmp.h

-   Definitions/Declarations for setjmp/longjmp routines.
	RTLU8 Original version.

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
#ifndef _SETJMP
#define _SETJMP

#ifndef _YVALS
#include <yvals.h>
#endif


		/* macros */

#ifdef	__MS__
								/* Small Model		*/
#asm
					/* subscript number of jmp_buf			*/
_SP_STOCK		EQU		0		/* save sp			*/
_FP_STOCK		EQU		2		/* save fp			*/
_PSW_STOCK		EQU		4		/* save psw			*/
_PC_STOCK		EQU		6		/* save return address		*/
_DSR_STOCK		EQU		8		/* save DSR			*/
_VAL_STOCK		EQU		10		/* save val			*/
_ER4_STOCK		EQU		12		/* save ER4			*/
_ER6_STOCK		EQU		14		/* save ER6			*/
_ER8_STOCK		EQU		16		/* save ER8			*/
_ER10_STOCK		EQU		18		/* save ER10		*/
_ER12_STOCK		EQU		20		/* save ER12		*/
#endasm
#endif

#ifdef	__ML__
								/* Large Model		*/
#asm
					/* subscript number of jmp_buf			*/
_SP_STOCK		EQU		0		/* save sp			*/
_FP_STOCK		EQU		2		/* save fp			*/
_PSW_STOCK		EQU		4		/* save psw			*/
_PC_STOCK		EQU		6		/* save return address		*/
_CSR_STOCK		EQU		8		/* save CSR			*/
_DSR_STOCK		EQU		10		/* save DSR			*/
_VAL_STOCK		EQU		12		/* save val			*/
_ER4_STOCK		EQU		14		/* save ER4			*/
_ER6_STOCK		EQU		16		/* save ER6			*/
_ER8_STOCK		EQU		18		/* save ER8			*/
_ER10_STOCK		EQU		20		/* save ER10		*/
_ER12_STOCK		EQU		22		/* save ER12		*/
#endasm
#endif

#ifdef __NEAR__
#define	 jmp_buf		jmp_buf_n
#define  setjmp(env)		_Setjmp_n(env)
#define  longjmp(env,ret)	longjmp_n(env,ret)
#endif

#ifdef __FAR__
#define	 jmp_buf		jmp_buf_f
#define  setjmp(env)		_Setjmp_f(env)
#define  longjmp(env,ret)	longjmp_f(env,ret)
#endif

		/* type definitions */
typedef int __near jmp_buf_n[_NSETJMP];
#ifndef __NOFAR__
typedef int __far jmp_buf_f[_NSETJMP];
#endif

		/* declarations */
void	longjmp_n(jmp_buf_n, int);
#ifndef __NOFAR__
void	longjmp_f(jmp_buf_f, int);
#endif
int	_Setjmp_n(jmp_buf_n);
#ifndef __NOFAR__
int	_Setjmp_f(jmp_buf_f);
#endif

		/* macro overrides */
#define setjmp_n(env)	_Setjmp_n(env)

#ifndef __NOFAR__
#define setjmp_f(env)	_Setjmp_f(env)
#endif

#endif

/* End of File */
