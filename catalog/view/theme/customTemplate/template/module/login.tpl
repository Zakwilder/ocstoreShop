<?php if (!$this->customer->isLogged()) { ?>
<div class="box login-block">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
	
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="module_login">
        <span class="default" style="display: block; padding: 10px">
            <span class="username">
                <span><?php echo $entry_email_address; ?></span>
                <input type="text" name="email" />
            </span>
            <span class="password">
                <span><?php echo $entry_password; ?></span>
                <input type="password" name="password" />
            </span>
            <p align="right" style="margin:5px 0;">
                <a onclick="$('#module_login').submit();" class="button"><span><?php echo $button_login; ?></span></a>
            </p>
            <a href="<?php echo $this->url->link('account/login', '', 'SSL');?>"><span><?php echo $button_create; ?></span></a>
        </span>
    </form>
  </div>
 </div>
  <script type="text/javascript"><!--
  $('#module_login input').keydown(function(e) {
	  if (e.keyCode == 13) {
		  $('#module_login').submit();
	  }
  });
  //--></script>
<?php } ?>
