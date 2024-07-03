<?php

function _sendMail($email, $subject, $message)
{
	$CI =& get_instance();
	$CI->load->library('email');
	$config = array(
		'protocol' => 'smtp',
		'smtp_host' => 'ssl://smtp.googlemail.com',
		'smtp_user' => 'tracerstudytubes@gmail.com',
		'smtp_pass' => 'tracerstudy1234',
		'smtp_port' => '465',
		'mailtype' => 'html',
		'charset' => 'utf-8',
		'newline' => "\r\n",
	);
	$CI->email->initialize($config);

	$CI->email->from('tracerstudytubes@gmail.com', 'Tracer Study');
	$CI->email->to($email);
	$CI->email->subject($subject);
	$CI->email->message($message);

	if ($CI->email->send()) {
		return true;
	} else {
		echo $CI->email->print_debugger();
	}
}
