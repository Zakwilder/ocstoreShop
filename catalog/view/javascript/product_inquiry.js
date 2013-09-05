$(document).ready(function () {
	$('#fast_order').colorbox({href:"#fast_order_form",inline:true, width:"650px", height:"620px", title:" Inquiry about the product "});
	$('#fast_order_form .fast_order_center button').click(function () {
		var product_name = $('#product_name').val();
		var product_price = $('#product_price').val();
		var customer_name = $('#customer_name').val();
		var customer_phone = $('#customer_phone').val();
		var customer_message = $('#customer_message').val();
		var customer_city = $('#customer_city').val();
		var customer_company = $('#customer_company').val();
		var customer_job_title = $('#customer_job_title').val();
		$('#result').html('Обрабатываем введенные данные..');
		$.post($('base').attr('href') + 'index.php?route=module/inquiry', { 'product_name': product_name, 'product_price': product_price, 'customer_name': customer_name, 'customer_phone': customer_phone, 'customer_message': customer_message, customer_city: customer_city, customer_company: customer_company, customer_job_title: customer_job_title }, function (data) { if (data == 'empty') { $('#fast_order_result').html('<span class="fast_order_error">Please state your name and phone number!</span>'); } else { $('#fast_order_result').html('<span class="fast_order_success">Inquiry was successfully sent!</span><br />'); } });
	});
});