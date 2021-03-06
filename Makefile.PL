use strict;
use warnings;
use inc::Module::Install;

name 'Zonemaster-GUI';
abstract 'Web frontend for Zonemaster';
author 'Michal TOMA <toma@nic.fr>';
license 'bsd';
version_from 'lib/Zonemaster/GUI.pm';

makemaker_args(
    PL_FILES  => {},
    PREREQ_PM => {
        'Starman'        => 0,
        'Template'       => 0,
        'LWP::UserAgent' => 0,
        'Time::HiRes'    => 0,
        'Plack::Builder' => 0,
        'Text::Markdown' => 0,
        'HTML::Entities' => 0,
        'JSON'           => 0,
        'Test::More'     => 0,
        'YAML'           => 0,
        'Dancer'         => 1.3095,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Zonemaster_Dancer-*' },
);

install_share 'zm_app';

WriteAll;
