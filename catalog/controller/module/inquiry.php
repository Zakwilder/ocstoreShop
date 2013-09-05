<?php
class ControllerModuleInquiry extends Controller {
	public function index()
	{
		$product_name = trim($_POST['product_name']);
		$product_price = trim($_POST['product_price']);
		$customer_name = trim($_POST['customer_name']);
		$customer_phone = trim($_POST['customer_phone']);
		$customer_message = trim($_POST['customer_message']);

		$customer_city = trim($_POST['customer_city']) || '';
		$customer_company = trim($_POST['customer_company']) || '';
		$customer_job_title = trim($_POST['customer_job_title']) || '';
		$mail_subject = "Inquiry about the product " . $product_name . " (".date('d.m.Y H:i').")";

		if (isset($customer_name) && $customer_name!=="" && isset($customer_phone) && $customer_phone!=="") {
			$fast_order_email = "gzak88@gmail.com";
			$product_name = iconv("UTF-8", "windows-1251", $product_name);
			$product_price = iconv("UTF-8", "windows-1251", $product_price);
			$subject   = '=?windows-1251?B?'.base64_encode($mail_subject).'?=';
			$customer_name = iconv("UTF-8", "windows-1251", $customer_name);
			$customer_phone = iconv("UTF-8", "windows-1251", $customer_phone);
			$customer_message = iconv("UTF-8", "windows-1251", $customer_message);

			$subject = '=?windows-1251?B?'.base64_encode($mail_subject).'?=';
			$text =
				"Inquiry form
				\n\n
				Inquiry date: ".date('d.m.Y H:i')."
				\nCustomer: ".$customer_name."
				\nCity: ".$customer_city."
				\nCompany: ".$customer_company."
				\nJob Title: ".$customer_job_title."
				\nPhone number: ".$customer_phone."
				\nMessage: ".$customer_message."
				\n\nProduct: ".$product_name."
				\nProduct price: ".$product_price
			;
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($fast_order_email);
			$mail->setSender($customer_name);
			$mail->setSubject($mail_subject);
			$mail->setText(strip_tags($text));
			$mail->send();
		} else {
			echo "empty";
		};
	}
}