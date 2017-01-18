/*============================================================================
-   ctype.h

-   Defines the ctype macros.

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
#ifndef _CTYPE
#define _CTYPE

#ifndef _YVALS
#include <yvals.h>
#endif

		/* _Ctype code bits */

#define _XA		0x200 /* extra alphabetic */
#define _XS		0x100 /* extra space */
#define _BB		0x80 /* BEL, BS, etc. */
#define _CN		0x40 /* CR, FF, HT, NL, VT */
#define _DI		0x20 /* '0'-'9' */
#define _LO		0x10 /* 'a'-'z' */
#define _PU		0x08 /* punctuation */
#define _SP		0x04 /* space */
#define _UP		0x02 /* 'A'-'Z' */
#define _XD		0x01 /* '0'-'9', 'A'-'F', 'a'-'f' */

		/* declarations */

int	isalnum(int);
int	isalpha(int);
int	iscntrl(int);
int	isdigit(int);
int	isgraph(int);
int	islower(int);
int	isprint(int);
int	ispunct(int);
int	isspace(int);
int	isupper(int);
int	isxdigit(int);

int	tolower(int);
int	toupper(int);

#ifdef __NOFAR__
extern	const unsigned char __near * const __near _Ctype;
#else
extern	const unsigned char __far * const __far _Ctype;
#endif

		/* macro overrides */
#define isalnum(c)	(_Ctype[(c)] & (_DI|_LO|_UP|_XA))
#define isalpha(c)	(_Ctype[(c)] & (_LO|_UP|_XA))
#define iscntrl(c)	(_Ctype[(c)] & (_BB|_CN))
#define isdigit(c)	(_Ctype[(c)] & _DI)
#define isgraph(c)	(_Ctype[(c)] & (_DI|_LO|_PU|_UP|_XA))
#define islower(c)	(_Ctype[(c)] & _LO)
#define isprint(c)	(_Ctype[(c)] & (_DI|_LO|_PU|_SP|_UP|_XA))
#define ispunct(c)	(_Ctype[(c)] & _PU)
#define isspace(c)	(_Ctype[(c)] & (_CN|_SP|_XS))
#define isupper(c)	(_Ctype[(c)] & _UP)
#define isxdigit(c)	(_Ctype[(c)] & _XD)

#define	toupper(ch)	(((ch) >= 'a' && (ch) <= 'z') ? ((ch) & 0xdf) : ((ch)))
#define	tolower(ch)	(((ch) >= 'A' && (ch) <= 'Z') ? ((ch) | 0x20) : ((ch)))

#endif

/* End of File */

