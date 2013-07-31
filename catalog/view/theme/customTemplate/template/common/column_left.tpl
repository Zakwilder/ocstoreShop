<div id="column-left">
    <div id="left-menu">
        <ul class="left-menu">
            <li>
                <a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
            </li>
            <li>
                <a href="<?php echo $about; ?>"><?php echo $text_about; ?></a>
            </li>
            <li>
                <a href="<?php echo $product; ?>" id="product"><?php echo $text_product; ?></a>
            </li>
            <li>
                <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
            </li>
        </ul>
    </div>
    <?php if ($modules) { ?>
      <?php foreach ($modules as $module) { ?>
      <?php echo $module; ?>
      <?php } ?>
    <?php } ?>
</div>
