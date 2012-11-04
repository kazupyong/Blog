<div class="login form">
    <?php echo $this->Session->flash('auth'); ?>
    <?php echo $this->Form->create('User', Array('url' => '/login/index')); ?>
    <table>
    	<tr>
    		<th>ユーザー名</th>
            <td><?php echo $this->Form->input('username', Array('label' => false)); ?></td>
    	</tr>
    	<tr>
    		<th>パスワード</th>
            <td><?php echo $this->Form->input('password', Array('label' => false)); ?></td>
    	</tr>
    </table>
    <?php echo $this->Form->end('ログイン'); ?>
</div>