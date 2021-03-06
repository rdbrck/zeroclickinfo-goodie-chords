#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => 'chords';
zci is_cached => 1;

ddg_goodie_test(
	[qw(
		DDG::Goodie::Chords
	)],
	'C chord' => test_zci("C Major scale: C, D, E, F, G, A, B, C ~ Relative Minor: A Minor ~ C Chord: C, E, G", html => qr[img alt='keyboard' src='data:image/gif;base64,R0lGOD.*img alt='guitar']),
	'piano Dm scale' => test_zci("D Minor scale: D, E, F, G, A, A# (Bb), C, D ~ Relative Major: F Major ~ Dm Chord: D, F, A", html => qr[img alt='keyboard' src='data:image/gif;base64,.+z6NOrXqFgNaD1gNO7ZsAK8t1J6NOzfo269b09YNPDjrC71/3xaOHDdv47\+TO5e9vPjx59RPR2dePbtp17WXa/8OPnz1AgA7'.+img alt='guitar']),
);

done_testing;

