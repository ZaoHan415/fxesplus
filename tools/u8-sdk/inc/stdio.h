/*============================================================================
-   stdio.h

-   Defines the stdio functions

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
#ifndef _STDIO
#define _STDIO

#ifndef _YVALS
#include <yvals.h>
#endif

		/* macros */

#define NULL		_NULL
#define EOF			-1
#define _IOFBF		0
#define _IOLBF		1
#define _IONBF		2
#define BUFSIZ		512
#define FILENAME_MAX	_FNAMAX
#define FOPEN_MAX		_FOPMAX
#define L_tmpnam		_TNAMAX
#define TMP_MAX		8
#define SEEK_SET	0
#define SEEK_CUR	1
#define SEEK_END	2
#define stdin		_Files[0]
#define stdout		_Files[1]
#define stderr		_Files[2]

typedef struct {
	unsigned long _Off;	/* system dependent */
	} fpos_t;
typedef struct {
	unsigned short _Mode;
	short _Handle;
	unsigned char __near *_Buf, __near *_Bend, __near *_Next;
	unsigned char __near *_Rend,  __near *_Rsave, __near *_Wend;
	unsigned char _Back[2], _Cbuf, _Nback;
	char __near *_Tmpnam;
	} FILE;

		/* type definitions */

#ifndef _SIZET
#define _SIZET
typedef _Sizet size_t;
#endif

		/* Access mode */

#ifdef __NEAR__
#define	fgets(s, n, str)	fgets_n(s, n, str)
#define	fprintf	fprintf_n
#define	fputs(s, str)	fputs_n(s, str)
#define	fread(ptr, size, nelem, str)	fread_n(ptr, size, nelem, str)
#define	fscanf	fscanf_n
#define	fwrite(ptr, size, nelem, str)	fwrite_n(ptr, size, nelem, str)
#define	gets(s)	gets_n(s)
#define	printf	printf_n
#define	puts(s)	puts_n(s)
#define	scanf	scanf_n
#define	setbuf(str, buf)	setbuf_n(str, buf)
#define	setvbuf(str, abuf, smode, size)\
	setvbuf_n(str, abuf, smode, size)
#define	sprintf	sprintf_nn
#define	sscanf	sscanf_nn
#define	vfprintf(str, fmt, ap)	vfprintf_n(str, fmt, ap)
#define	vprintf(fmt, ap)	vprintf_n(fmt, ap)
#define	vsprintf(s, fmt, ap)	vsprintf_nn(s, fmt, ap)
#endif

#ifdef __FAR__
#define	fgets(s, n, str)	fgets_f(s, n, str)
#define	fprintf	fprintf_f
#define	fputs(s, str)	fputs_f(s, str)
#define	fread(ptr, size, nelem, str)	fread_f(ptr, size, nelem, str)
#define	fscanf	fscanf_f
#define	fwrite(ptr, size, nelem, str)	fwrite_f(ptr, size, nelem, str)
#define	gets(s)	gets_f(s)
#define	printf	printf_f
#define	puts(s)	puts_f(s)
#define	scanf	 scanf_f
#define	setbuf(str, buf)	setbuf_f(str, buf)
#define	setvbuf(str, abuf, smode, size)\
	setvbuf_f(str, abuf, smode, size)
#define	sprintf	sprintf_ff
#define	sscanf	sscanf_ff
#define	vfprintf(str, fmt, ap)	vfprintf_f(str, fmt, ap)
#define	vprintf(fmt, ap)	vprintf_f(fmt, ap)
#define	vsprintf(s, fmt, ap)	vsprintf_ff(s, fmt, ap)
#endif

extern	FILE __near *	__near _Files[FOPEN_MAX];

/*
		_Mode		: Mode
		_Handle		: Handle
		_Buf		: Buffer (start)
		_Bend		: Buffer end
		_Next		: Next char
		_Rend		: Read end char
		_Rsave		: Read ...
		_Wend		: Write end char
		_Back[2]	: 
		_Cbuf		: 
		_Nback		: 
		_Tmpnam;	: Temporary name
*/
		/* declarations */

int fflush(FILE __near *);

int fgetc(FILE __near *);

char __near * fgets_n(char __near *, int, FILE __near *);
#ifndef __NOFAR__
char __far * fgets_f(char __far *, int, FILE __near *);
#endif

int __noreg fprintf_n(FILE __near *, const char __near *, ...);
#ifndef __NOFAR__
int __noreg fprintf_f(FILE __near *, const char __far *, ...);
#endif

int fputc(int, FILE __near *);

int fputs_n(const char __near *, FILE __near *);
#ifndef __NOFAR__
int fputs_f(const char __far *, FILE __near *);
#endif

size_t fread_n(void __near *, size_t, size_t, FILE __near *); 
#ifndef __NOFAR__
size_t fread_f(void __far *, size_t, size_t, FILE __near *);
#endif

int __noreg fscanf_n(FILE __near *, const char __near *, ...);
#ifndef __NOFAR__
int __noreg fscanf_f(FILE __near *, const char __far *, ...);
#endif

size_t fwrite_n(const char __near *, size_t, size_t, FILE __near *);
#ifndef __NOFAR__
size_t fwrite_f(const char __far *, size_t, size_t, FILE __near *);
#endif

int getc(FILE __near *);

int getchar(void);

char __near * gets_n(char __near *);
#ifndef __NOFAR__
char __far * gets_f(char __far *);
#endif

int __noreg printf_n(const char __near *, ...);
#ifndef __NOFAR__
int __noreg printf_f(const char __far *, ...);
#endif

int putc(int, FILE __near *);

int putchar(int); 

int puts_n(const char __near *);
#ifndef __NOFAR__
int puts_f(const char __far *);
#endif

int __noreg scanf_n(const char __near *, ...);
#ifndef __NOFAR__
int __noreg scanf_f(const char __far *, ...);
#endif

void  setbuf_n(FILE __near *, char __near *);
#ifndef __NOFAR__
void  setbuf_f(FILE __near *, char __far *);
#endif

int  setvbuf_n(FILE __near *, char __near *, int, size_t);
#ifndef __NOFAR__
int  setvbuf_f(FILE __near *, char __far *, int, size_t);
#endif

int __noreg sprintf_nn(char __near *, const char __near *, ...);
#ifndef __NOFAR__
int __noreg sprintf_nf(char __near *, const char __far *, ...);
int __noreg sprintf_fn(char __far *, const char __near *, ...);
int __noreg sprintf_ff(char __far *, const char __far *, ...);
#endif

int __noreg sscanf_nn(const char __near *, const char __near *, ...);
#ifndef __NOFAR__
int __noreg sscanf_nf(const char __near *, const char __far *, ...);
int __noreg sscanf_fn(const char __far *, const char __near *, ...);
int __noreg sscanf_ff(const char __far *, const char __far *, ...);
#endif

int ungetc(int, FILE __near *);

int __noreg vfprintf_n(FILE __near *, const char __near *, char __near *);
#ifndef __NOFAR__
int __noreg vfprintf_f(FILE __near *, const char __far *, char __near *);
#endif

int __noreg vprintf_n(const char __near *, char __near *);
#ifndef __NOFAR__
int __noreg vprintf_f(const char __far *, char __near *);
#endif

int __noreg vsprintf_nn(char __near *, const char __near *, char __near *);
#ifndef __NOFAR__
int __noreg vsprintf_nf(char __near *, const char __far *, char __near *);
int __noreg vsprintf_fn(char __far *, const char __near *, char __near *);
int __noreg vsprintf_ff(char __far *, const char __far *, char __near *);
#endif

        /* macro overrides */

#define getc(str)	((str)->_Next < (str)->_Rend \
	? *(str)->_Next++ : (getc)(str))
#define getchar()	(_Files[0]->_Next < _Files[0]->_Rend \
	? * _Files[0]->_Next++ : (getchar)())
#define putc(c, str)	(!((str)->_Mode & 0xC00) && \
	(str)->_Next < (str)->_Wend \
	? (*(str)->_Next++ = c) : (putc)(c, str))
#define putchar(c)	(!(_Files[1]->_Mode & 0xC00) && \
	_Files[1]->_Next < _Files[1]->_Wend \
	? (*_Files[1]->_Next++ = c) : (putchar)(c))
#endif

/* End of File */
