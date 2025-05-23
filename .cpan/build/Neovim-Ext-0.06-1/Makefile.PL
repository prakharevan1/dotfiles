use strict;
use warnings;

# This Makefile.PL for  was generated by Dist::Zilla.
# Don't edit it but the dist.ini used to construct it.
BEGIN { require 5.022; }
use strict;
use warnings;
use ExtUtils::MakeMaker 0;
use ExtUtils::Constant qw (WriteConstants);

my %WriteMakefileArgs = (
  "ABSTRACT" => "Perl bindings for neovim",
  "AUTHOR" => "Jacques Germishuys <jacquesg\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "Class::Accessor" => "0.34",
    "Eval::Safe" => "0.02",
    "ExtUtils::MakeMaker" => "6.63_03",
    "IO::Async" => "0.74",
    "MsgPack::Raw" => "0.01"
  },
  "DISTNAME" => "Neovim-Ext",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.022",
  "NAME" => "Neovim::Ext",
  "PREREQ_PM" => {
    "Attribute::Handlers" => 0,
    "Carp" => 0,
    "Class::Accessor" => 0,
    "Eval::Safe" => 0,
    "Exporter" => 0,
    "IO::Async::Loop" => 0,
    "IO::Async::Signal" => 0,
    "IO::Async::Stream" => 0,
    "IO::Handle" => 0,
    "IO::Socket::INET" => 0,
    "IO::Socket::UNIX" => 0,
    "IPC::Open3" => 0,
    "List::Util" => 0,
    "MsgPack::Raw" => 0,
    "Scalar::Util" => 0,
    "Socket" => 0,
    "Tie::Array" => 0,
    "Tie::Hash" => 0,
    "Time::HiRes" => 0,
    "base" => 0,
    "overload" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Archive::Tar" => "0.0",
    "Archive::Zip" => "0.0",
    "File::Path" => 0,
    "File::Slurper" => "0.0",
    "File::Spec" => 0,
    "File::Spec::Functions" => 0,
    "File::Temp" => 0,
    "File::Which" => "0.0",
    "HTTP::Tiny" => "0.0",
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Proc::Background" => "0.0",
    "Test::More" => 0,
    "Test::Pod" => "0.0",
    "Test::Pod::Coverage" => "0.0",
    "lib" => 0
  },
  "VERSION" => "0.06",
  "test" => {
    "TESTS" => "t/*.t"
  }
);

unless (eval { ExtUtils::MakeMaker->VERSION(6.56) }) {
	my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
	my $pp = $WriteMakefileArgs{PREREQ_PM};

	for my $mod (keys %$br) {
		if (exists $pp -> {$mod}) {
			$pp -> {$mod} = $br -> {$mod}
				if $br -> {$mod} > $pp -> {$mod};
		} else {
			$pp -> {$mod} = $br -> {$mod};
		}
	}
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
	unless eval { ExtUtils::MakeMaker -> VERSION(6.52) };

WriteMakefile (%WriteMakefileArgs);
exit (0);
