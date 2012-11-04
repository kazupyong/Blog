<div class="articles view">
	<p class="articletitle">
<?php echo h($article['Article']['title']); ?>
</p>
	<div align="right">
		<h5>DATE: <?php echo substr(h($article['Article']['published']),0,10); ?></h5>
	</div>
	<div class='tag'>Tag: <?php if(is_array($article['Tag'])) :?>
  <?php foreach ($article['Tag'] as $tag) :?>
  <span class='label'><?php echo $this->Html->link($tag['name'], array('action' => 'index','tag' => $tag['id'])); ?></span>
  <?php endforeach;?>
  <?php endif;?>
</div>
<pre>
  <?php echo h($article['Article']['contents']); ?>
</pre>
</div>
<div class="actions">
	<h3>タグ一覧</h3>
	<?php if(is_array($tags)) :?>
	<ul>
    <?php foreach ($tags as $tag) :?>
	<li><?php echo $this->Html->link($tag['Tag']['name'], array('action' => 'index','tag' => $tag['Tag']['id'])); ?></li>
	<?php endforeach;?>
	</ul>
  <?php endif;?>
</div>
