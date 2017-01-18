/*============================================================================
-   yfuns.h

-

-   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.

============================================================================ */
/* yfuns.h functions header */
#ifndef _YFUNS
#define _YFUNS


		/* process control functions */
#define _Exit(status)	_exit(status)

		/* stdio functions */
#define _Fclose(str)	close((str)->_Handle)
#define _Fread(str, buf, cnt)	read((str)->_Handle, buf, cnt)
#define _Fwrite(str, buf, cnt)	write((str)->_Handle, buf, cnt)

		/* interface declarations */

int close(int);
void _exit(int);

int read(int, unsigned char __near *, unsigned int);
int write(int, unsigned char __near *, unsigned int);

#endif
