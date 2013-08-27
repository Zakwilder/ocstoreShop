<?php echo $header; ?>
<div id="contentbody">
    <?php echo $column_left; ?>
    <?php echo $column_right; ?>
    <div id="content"><?php echo $content_top; ?>
    <h1 style="display: none;"><?php echo $heading_title; ?></h1>
    <?php echo $content_bottom; ?></div>
    <div class="adr">
        <?php if ($address) { ?>
            <span class="firstline">
                <?php echo $address; ?>
            </span>
        <?php } ?>
        <br/>
        <?php if ($telephone) { ?>
            <span class="tel">
                <?php echo $text_telephone; ?>
            </span>
            <span class="phonenumber">
                <?php echo $telephone; ?>
            </span>
        <?php } ?>
        <?php if ($fax) { ?>
            <span class="fax">
                <?php echo $text_fax; ?>
            </span>
            <span class="faxnumber">
                <?php echo $fax; ?>
            </span>
        <?php } ?>
        <?php if ($email) { ?>
            <span class="mail">
                <?php echo $text_email; ?>
            </span>
            <span class="mailtext">
                <?php echo $email; ?>
            </span>
        <?php } ?>
    </div>
</div>
<?php echo $footer; ?>