<?php echo $header; ?>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ampliacao/css/jqzoom.css" />
<script src="catalog/view/javascript/jquery/ampliacao/jqzoom.pack.1.0.1.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/ampliacao/jquery.jqzoom1.0.1.js" type="text/javascript"></script>
<script type="text/javascript"><!--
    $(document).ready(function(){
        var options =
        {
            showEffect:'show',
            hideEffect:'fadeout',
            fadeoutSpeed: 'slow',
            title :true,
            lens:true,
            zoomWidth: 350,
            zoomHeight: 350
        }
        $(".jqzoom").jqzoom(options);
    });


    //--></script>
<div id="contentbody">
    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content">
      <div class="box">
        <div class="box-heading"><?php echo $heading_title; ?></div>
      <div class="box-content">
      <?php if (isset($news_info)) { ?>
        <div class="box-news" <?php if ($image) { echo 'style="min-height: ' . $min_height . 'px;"'; } ?>>
          <?php if ($image) { ?>
            <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="thickbox jqzoom" rel="fancybox"><img align="right" style="border: none; margin-left: 10px;" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
          <?php } ?>
          <?php echo $description; ?>
        </div>
      <?php } elseif (isset($news_data)) { ?>
        <?php foreach ($news_data as $news) { ?>
          <div class="box-news">
            <h3 style="margin-top: 5px;"><?php echo $news['title']; ?></h3>
            <?php echo $news['description']; ?> <a href="<?php echo $news['href']; ?>"><?php echo $text_read_more; ?></a></p>
            <p><b><?php echo $text_date_added; ?></b>&nbsp;<?php echo $news['date_added']; ?></p>
          </div>
        <?php } ?>
      <?php } ?>
      </div>
    </div>
</div>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>
