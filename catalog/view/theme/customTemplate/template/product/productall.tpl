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


      <?php if ($products) { ?>
      <div style="padding: 10px 0 10px 10px">
          <!--<div class="product-filter">
            <div class="limit"><b style="color: #fff;"><?php echo $text_limit; ?></b>
              <select onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>-->

          <div class="product-list">
            <table>
                <tbody>
                    <?php $tdn = 0; ?>
                    <?php foreach ($products as $product) { ?>
                    <?php if ($tdn == 3) $tdn = 0;?>
                    <?php if ($tdn == 0): ?><tr><?php endif; ?>
                        <td>
                            <div class="product-view">
                              <?php if ($product['thumb']) { ?>
                              <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                              <?php } ?>
                              <div class="name">
                                  <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                              </div>
                              <div class="description"><?php echo $product['meta_description']; ?><br/></div>
                              <?php if ($product['price']) { ?>
                              <div class="price">
                                <?php echo $this->language->get('text_price');?>
                                <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                                <?php } else { ?>
                                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                                <?php } ?>
                                <?php if ($product['tax']) { ?>
                                <br />
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                <?php } ?>
                              </div>
                              <?php } ?>
                              <!--<div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="buttonbuy"><span><?php echo $button_cart; ?></span></a></div>-->
                            </div>
                        </td>
                    <?php if ($tdn == 3): ?></tr><?php endif; ?>
                    <?php $tdn++;?>
                    <?php } ?>
                </tbody>
            </table>
          </div>
          <!--<div class="pagination"><?php echo $pagination; ?></div>-->
      </div>
      <?php } ?>
      <?php if ( !$products) { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
      </div>
      <?php } ?>

    </div>
    <?php echo $content_bottom; ?>
</div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';

						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.cookie('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			//html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');																																																				
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

display('grid');
//--></script>
<?php echo $footer; ?>