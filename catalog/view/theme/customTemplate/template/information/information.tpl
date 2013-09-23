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
      <?php } ?>
      <!--<div class="buttons">
        <!--<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>-->

    </div>
    <?php echo $content_bottom; ?>
</div>
<script type="text/javascript"><!--
    $('.colorbox').colorbox({
        overlayClose: true,
        opacity: 0.5
    });
//--></script>
<?php echo $footer; ?>