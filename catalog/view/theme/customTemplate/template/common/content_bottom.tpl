<?php foreach ($modules as $module) { ?>
<?php echo $module; ?>
<?php } ?>
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