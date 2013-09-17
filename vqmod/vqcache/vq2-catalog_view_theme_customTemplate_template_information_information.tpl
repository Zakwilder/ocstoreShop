<?php echo $header; ?>
<div id="contentbody">
    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content"><?php echo $content_top; ?>
      <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
      </div>
      <h1><?php echo $heading_title; ?></h1>
        <br/>
      <?php echo $description; ?>
      <?php if ($id == 8) { ?>

			
                    <a id="contact-us-link" class="button" />Contact Us</a>
                    <div style="display:none">
                        <div id="contact-us-form">
                            <div class="fast_order_center">Contact Us Form</div>
                            <div class="fast_order_left">
                              <p>
                                <font style="color: red">* </font>
                                Name:
                              </p>
                              <p>
                                E-mail:
                              </p>
                              <p>Enquiry:</p>
                            </div>
                            <div class="fast_order_right">
                              <p><input type="text" id="customer_name"/></p>
                              <p><input type="text" id="customer_mail"/></p>
                              <p><textarea id="customer_message"></textarea></p>
                            </div>
                            <br/>
                            <div class="fast_order_center">
                              <p id="fast_order_result">Fields with <span style="color: red">*</span> are required</p>
                              <button class="fast_order_button"><span>Send Inquiry</span></button>
                            </div>
                        </div>
                    </div>
			
			
      <?php } ?>
      <!--<div class="buttons">
        <!--<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>-->

    </div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>