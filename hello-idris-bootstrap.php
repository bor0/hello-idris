<?php
/*
Plugin Name: Hello Dolly - Idris
Plugin URI: https://wordpress.org/plugins/hello-dolly-idris/
Description: This is a copy of the Hello Dolly plugin, written in Idris programming language with dependent types.
Author: Boro Sitnikovski
Version: 1.0
Author URI: https://github.com/bor0/hello-idris/
Text Domain: hello-dolly-idris
*/

// This just echoes the chosen line, we'll position it later
function hello_dolly() {
	$chosen = hello_dolly_get_lyric();
	echo "<p id='dolly-idris'>$chosen</p>";
}

// Now we set that function up to execute when the admin_notices action is called
add_action( 'admin_notices', 'hello_dolly' );

function hello_dolly_get_lyric() {
	require 'hello-idris.php';
}
