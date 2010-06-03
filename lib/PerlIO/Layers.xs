#define PERL_NO_GET_CONTEXT
#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>
#include <perliol.h>

#define CONSTANT(name, key, value) hv_store(get_hv("PerlIO::Layers::FLAG_FOR", TRUE), key, sizeof key - 1, newSVuv(value), 0)

#define INSTANCE_CONSTANT(cons) CONSTANT(FLAGS, #cons, PERLIO_F_##cons)

MODULE = PerlIO::Layers				PACKAGE = PerlIO::Layers

BOOT:
	INSTANCE_CONSTANT(EOF);
	INSTANCE_CONSTANT(CANWRITE);
	INSTANCE_CONSTANT(CANREAD);
	INSTANCE_CONSTANT(ERROR);
	INSTANCE_CONSTANT(TRUNCATE);
	INSTANCE_CONSTANT(APPEND);
	INSTANCE_CONSTANT(CRLF);
	INSTANCE_CONSTANT(UTF8);
	INSTANCE_CONSTANT(UNBUF);
	INSTANCE_CONSTANT(WRBUF);
	INSTANCE_CONSTANT(RDBUF);
	INSTANCE_CONSTANT(LINEBUF);
	INSTANCE_CONSTANT(TEMP);
	INSTANCE_CONSTANT(OPEN);
	INSTANCE_CONSTANT(FASTGETS);
