<div class="articles view">
<?php
foreach ($articles as $article) :
    ?>
<p class="articletitle">
    <?php echo $this->Html->link(($article['Article']['title']), array('action' => 'view', $article['Article']['id'])); ?></p>
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
  <?php echo mb_substr(h($article['Article']['contents']),0,200,'utf8'); ?>
</pre>
<?php endforeach; ?>

<div class="paging">
	<?php
echo $this->Paginator->prev('< ' . __('previous'), array(), null,  array('class' => 'prev disabled'));
echo $this->Paginator->numbers(array('separator' => ''));
echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
?>
</div>
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
