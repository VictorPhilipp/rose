require 5.006;

use ExtUtils::MakeMaker;

WriteMakefile(NAME         => 'Bundle::Rose',
              PMLIBDIRS    => [ 'lib' ],
              ($^O =~ /darwin/i ?
               (dist => { DIST_CP => 'cp' }) : ()), # Avoid Mac OS X ._* files
              VERSION_FROM => 'lib/Bundle/Rose.pm');
