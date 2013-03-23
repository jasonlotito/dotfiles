#!/usr/bin/php
<?php

$dir = dir(dirname('.'));

while( false !== ($entry = $dir->read())) {
	
	if(stristr($entry, '_') && $entry!=='.DS_Store' && stristr($entry, 'pdf')) {
		$file = $entry;
		$entry = str_replace('_',' ', $entry);

		$replace = array(
			'html5',
			'php',
			'os',
			'css',
			'javascript',
			'dom',
			'ios',
			'jquery',
		);

		$with = array(
			'HTML5',
			'PHP',
			'OS',
			'CSS',
			'JavaScript',
			'DOM',
			'iOS',
			'jQuery',
		);

		$entry = str_replace($replace, $with, $entry);
		$entry = ucwords($entry);

		rename($file, $entry);

		echo $entry, PHP_EOL;
	}
}
