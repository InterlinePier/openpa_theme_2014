{def $openpa = object_handler($node)}
<a href="{$openpa.content_link.full_link}" title="Link a {if is_set( $text )}{$text|wash()}{else}{$node.name|wash()}{/if}">
    {if is_set( $text )}
        {if is_set( $shorten )}
            {$text|shorten($shorten)|wash()}
        {else}
            {$text|wash()}
        {/if}

    {else}
        {if is_set( $shorten )}
            {$node.name|shorten($shorten)|wash()}
        {else}
            {$node.name|wash()}
        {/if}

    {/if}
</a>