<?php
/**
  * @var \App\View\AppView $this
  */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $comprovante->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $comprovante->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Comprovantes'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Files'), ['controller' => 'Files', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New File'), ['controller' => 'Files', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="comprovantes form large-9 medium-8 columns content">
    <?= $this->Form->create($comprovante)?>
    <fieldset>
        <legend><?= __('Edit Comprovante') ?></legend>
        <?php
            echo $this->Form->control('user_id');
            //echo $this->Form->control('boleto_id', ['options' => $files]);
            echo $this->Form->control('recibo_id', ['type' => 'file', 'class' => 'form-control']);
            echo $this->Form->control('payment');
            echo $this->Form->control('Maturity');
            echo $this->Form->control('aproved');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Upload file'),['type'=>'submit', 'class' => 'form-controlbtn btn-default']); ?>
    <?= $this->Form->end() ?>
</div>
