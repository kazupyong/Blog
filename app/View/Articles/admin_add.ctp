<div class="articles form">
<?php echo $this->Form->create('Article'); ?>
	<fieldset>
		<legend><?php echo __('Admin Add Article'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('contents');
		echo $this->Form->input('published');
		echo $this->Form->input('Tag');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('List Articles'), array('controller' => 'articles', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Article'), array('controller' => 'articles', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Tags'), array('controller' => 'tags','action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('New Article Tag'), array('controller' => 'tags', 'action' => 'add')); ?> </li>
	    <li><?php echo $this->Html->link(__('Logout'),'/login/logout'); ?> </li>
	</ul>
</div>
