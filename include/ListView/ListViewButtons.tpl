<ul class="list-view-action-buttons">
    {if !isset($templateMeta.form.buttons)}
    <li></li>
    {else}
    {counter assign="num_action_buttons" start=0 print=false}
        {if count($templateMeta.form.buttons) > $num_action_buttons}
            {foreach from=$templateMeta.form.buttons key=val item=button}
            {if is_array($button) && $button.customCode}<li>{eval var=$button.customCode} </li>{/if}
            {/foreach}
        {/if}
    {/if}
</ul>