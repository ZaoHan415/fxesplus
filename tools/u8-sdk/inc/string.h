/*============================================================================
-   string.h

-   Definitions for memory and string functions.

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
#ifndef _STRING
#define _STRING

#ifndef _YVALS
#include <yvals.h>
#endif

		/* macros */

#define NULL	_NULL

		/* type definitions */

#ifndef _SIZET
#define _SIZET
typedef _Sizet size_t;
#endif

		/* Access mode */

#ifdef __NEAR__
#define	memchr(s, c, n)	memchr_n(s, c, n)
#define	memcmp(s1, s2, n)	memcmp_nn(s1, s2, n)
#define memcpy(s1, s2, n)	memcpy_nn(s1, s2, n)
#define memmove(s1, s2, n)	memmove_nn(s1, s2, n)
#define memset(s, c, n)	memset_n(s, c, n)
#define strcat(s1, s2)	strcat_nn(s1, s2)
#define strchr(s, c)	strchr_n(s, c)
#define	strcmp(s1, s2)	strcmp_nn(s1, s2)
#define strcpy(s1, s2)	strcpy_nn(s1, s2)
#define	strcspn(s1, s2)	strcspn_nn(s1, s2)
#define	strlen(s)	strlen_n(s)
#define strncat(s1, s2, n)	strncat_nn(s1, s2, n)
#define	strncmp(s1, s2, n)	strncmp_nn(s1, s2, n)
#define strncpy(s1, s2, n)	strncpy_nn(s1, s2, n)
#define strpbrk(s1, s2)	strpbrk_nn(s1, s2)
#define strrchr(s, c)	strrchr_n(s, c)
#define	strspn(s1, s2)	strspn_nn(s1, s2)
#define strstr(s1, s2)	strstr_nn(s1, s2)
#define strtok(s1, s2)	strtok_nn(s1, s2)
#endif

#ifdef __FAR__
#define memchr(s, c, n)	memchr_f(s, c, n)
#define	memcmp(s1, s2, n)	memcmp_ff(s1, s2, n)
#define memcpy(s1, s2, n)	memcpy_ff(s1, s2, n)
#define memmove(s1, s2, n)	memmove_ff(s1, s2, n)
#define memset(s, c, n)	memset_f(s, c, n)
#define strcat(s1, s2)	strcat_ff(s1, s2)
#define strchr(s, c)	strchr_f(s, c)
#define	strcmp(s1, s2)	strcmp_ff(s1, s2)
#define strcpy(s1, s2)	strcpy_ff(s1, s2)
#define	strcspn(s1, s2)	strcspn_ff(s1, s2)
#define	strlen(s)	strlen_f(s)
#define strncat(s1, s2, n)	strncat_ff(s1, s2, n)
#define	strncmp(s1, s2, n)	strncmp_ff(s1, s2, n)
#define strncpy(s1, s2, n)	strncpy_ff(s1, s2, n)
#define strpbrk(s1, s2)	strpbrk_ff(s1, s2)
#define strrchr(s, c)	strrchr_f(s, c)
#define	strspn(s1, s2)	strspn_ff(s1, s2)
#define strstr(s1, s2)	strstr_ff(s1, s2)
#define strtok(s1, s2)	strtok_ff(s1, s2)
#endif

		/* declarations */

void __near * memchr_n(const void __near *, int, size_t);
#ifndef __NOFAR__
void __far * memchr_f(const void __far *, int, size_t);
#endif

int memcmp_nn(const void __near *, const void __near *, size_t);
#ifndef __NOFAR__
int memcmp_nf(const void __near *, const void __far *, size_t);
int memcmp_fn(const void __far *, const void __near *, size_t);
int memcmp_ff(const void __far *, const void __far *, size_t);
#endif

void __near * memcpy_nn(void __near *, const void __near *, size_t);
#ifndef __NOFAR__
void __near * memcpy_nf(void __near *, const void __far *, size_t);
void __far * memcpy_fn(void __far *, const void __near *, size_t);
void __far * memcpy_ff(void __far *, const void __far *, size_t);
#endif

void __near * memmove_nn(void __near *, const void __near *, size_t);
#ifndef __NOFAR__
void __near * memmove_nf(void __near *, const void __far *, size_t);
void __far * memmove_fn(void __far *, const void __near *, size_t);
void __far * memmove_ff(void __far *, const void __far *, size_t);
#endif

void __near * memset_n(void __near *, int, size_t);
#ifndef __NOFAR__
void __far * memset_f(void __far *, int, size_t);
#endif

char __near * strcat_nn(char __near *, const char __near *);
#ifndef __NOFAR__
char __near * strcat_nf(char __near *, const char __far *);
char __far * strcat_fn(char __far *, const char __near *);
char __far * strcat_ff(char __far *, const char __far *);
#endif

char __near * strchr_n(const char __near *, int);
#ifndef __NOFAR__
char __far * strchr_f(const char __far *, int);
#endif

int strcmp_nn(const char __near *, const char __near *);
#ifndef __NOFAR__
int strcmp_nf(const char __near *, const char __far *);
int strcmp_fn(const char __far *, const char __near *);
int strcmp_ff(const char __far *, const char __far *);
#endif

char __near * strcpy_nn(char __near *, const char __near *);
#ifndef __NOFAR__
char __near * strcpy_nf(char __near *, const char __far *);
char __far * strcpy_fn(char __far *, const char __near *);
char __far * strcpy_ff(char __far *, const char __far *);
#endif

size_t strcspn_nn(const char __near *, const char __near *);
#ifndef __NOFAR__
size_t strcspn_nf(const char __near *, const char __far *);
size_t strcspn_fn(const char __far *, const char __near *);
size_t strcspn_ff(const char __far *, const char __far *);
#endif

size_t strlen_n(const char __near *);
#ifndef __NOFAR__
size_t strlen_f(const char __far *);
#endif

char __near * strncat_nn(char __near *, const char __near *, size_t);
#ifndef __NOFAR__
char __near * strncat_nf(char __near *, const char __far *, size_t);
char __far * strncat_fn(char __far *, const char __near *, size_t);
char __far * strncat_ff(char __far *, const char __far *, size_t);
#endif

int strncmp_nn(const char __near *, const char __near *, size_t);
#ifndef __NOFAR__
int strncmp_nf(const char __near *, const char __far *, size_t);
int strncmp_fn(const char __far *, const char __near *, size_t);
int strncmp_ff(const char __far *, const char __far *, size_t);
#endif

char __near * strncpy_nn(char __near *, const char __near *, size_t);
#ifndef __NOFAR__
char __near * strncpy_nf(char __near *, const char __far *, size_t);
char __far * strncpy_fn(char __far *, const char __near *, size_t);
char __far * strncpy_ff(char __far *, const char __far *, size_t);
#endif

char __near * strpbrk_nn(const char __near *, const char __near *);
#ifndef __NOFAR__
char __near * strpbrk_nf(const char __near *, const char __far *);
char __far * strpbrk_fn(const char __far *, const char __near *);
char __far * strpbrk_ff(const char __far *, const char __far *);
#endif

char __near * strrchr_n(const char __near *, int);
#ifndef __NOFAR__
char __far * strrchr_f(const char __far *, int);
#endif

size_t	strspn_nn(const char __near *, const char __near *);
#ifndef __NOFAR__
size_t	strspn_nf(const char __near *, const char __far *);
size_t	strspn_fn(const char __far *, const char __near *);
size_t	strspn_ff(const char __far *, const char __far *);
#endif

char __near * strstr_nn(const char __near *, const char __near *);
#ifndef __NOFAR__
char __near * strstr_nf(const char __near *, const char __far *);
char __far * strstr_fn(const char __far *, const char __near *);
char __far * strstr_ff(const char __far *, const char __far *);
#endif

char __near * strtok_nn(char __near *, const char __near *);
#ifndef __NOFAR__
char __near * strtok_nf(char __near *, const char __far *);
char __far * strtok_fn(char __far *, const char __near *);
char __far * strtok_ff(char __far *, const char __far *);
#endif

#endif

/* End of File */
