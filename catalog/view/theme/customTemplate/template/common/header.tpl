<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/customTemplate/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/customTemplate/stylesheet/news.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/customTemplate/stylesheet/slideshow.css" />
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/customTemplate/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/customTemplate/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div id="navi">
    <!--<div id="welcome">
        <?php if (!$logged) { ?>
        <?php echo $text_welcome; ?>
        <?php } else { ?>
        <?php echo $text_logged; ?>
        <?php } ?>
    </div>-->
    <ul>
        <li>
            <a href="<?php echo $home; ?>" id="product">
                <?php echo implode('&nbsp;',str_split($text_products)); ?>

            </a>

        </li>
        <li>
            <a href="<?php echo $portfolio; ?>">
                <?php echo implode('&nbsp;',str_split($text_portfolio)); ?>

            </a>

        </li>
        <li>
            <a href="<?php echo $about; ?>">
                <?php echo implode('&nbsp;',str_split($text_about)); ?>

            </a>

        </li>
        <li>
            <a href="<?php echo $contact; ?>">
                <?php echo implode('&nbsp;',str_split($text_contact)); ?>

            </a>

        </li>
    </ul>
    <div id="search">
        <div class="div9">
            <span><?php echo $text_search;?></span>
            <?php if ($filter_name) { ?>
            <input type="text" class="text_search" value="<?php echo $filter_name; ?>" id="filter_keyword" name="filter_name" onclick="this.value = '';" onkeydown="this.style.color = '#fff'" style="color: #fff;"/>
            <?php } else { ?>
            <input type="text" class="text_search" value="<?php echo $text_search; ?>" id="filter_keyword" name="filter_name" onclick="this.value = '';" onkeydown="this.style.color = '#fff'" style="color: #fff;" />
            <?php } ?>
            <input name="image" type="image" class="button-search" src="catalog/view/theme/customTemplate/image/Spotlight01.png">

        </div>

    </div>
    <?php //echo $cart; ?>
</div>
<div id="header">
  <!--<?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>-->
    <?php foreach ($modules as $module) { ?>
    <?php echo $module; ?>
    <?php } ?>
</div>
<div id="filter">
    <!--<div id="search">
        <div class="button-search"></div>
        <?php if ($filter_name) { ?>
        <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
        <?php } else { ?>
        <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
        <?php } ?>
    </div>-->
</div>
<div id="notification"></div>
