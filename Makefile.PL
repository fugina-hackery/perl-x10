use ExtUtils::MakeMaker;

WriteMakefile(
   NAME => 'X10',
   VERSION_FROM => 'X10.pm',
   PMLIBDIRS => [ qw{.} ],
   PREREQ_PM =>
	{ # I know some of these come with perl, but we can't be too careful
	Astro::SunTime		=> 0.01,
	Device::SerialPort	=> 0,
	File::Basename		=> 0,
	FileHandle		=> 0,
	IO::Select		=> 0,
	IO::Socket		=> 0,
	POSIX			=> 0,
	Storable		=> 0,
	Time::ParseDate		=> 0,
	},                         
   INSTALLDIRS => 'site',
   dist =>
	{
	# PREOP        => 'pod2text lib/CPAN/WAIT.pm > README;',
	DIST_DEFAULT => 'tardist',
	COMPRESS     => 'gzip -9f'
	},
   EXE_FILES => [ qw(x10server x10client) ],
);

