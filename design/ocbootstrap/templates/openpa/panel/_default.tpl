<div class="media-panel">
  {if $node|has_attribute('image')}
      <figure {if $node|has_attribute('image_full')}class="bg-contain"{/if} style="background: url( {$node|attribute('image').content.imagefull.full_path|ezroot(no)} )"></figure>
  {/if}

  <div class="media{if $node|has_attribute('image')} has-image{/if}">
    <div class="caption">
      <h4 class="fw_medium color_dark">
          <a href="{$openpa.content_link.full_link}" title="{$node.name|wash()}">{$node.name|openpa_shorten(60)|wash()}</a>
      </h4>

{*      <p class="abstract">
        {$node|abstract()|openpa_shorten(270)}
      </p>*}

        {if $node|has_abstract()}
            {def $text = $node|abstract()}

            {if $text|trim()|begins_with( '<')}
                {$text}
            {else}
                <p>{$text}</p>
            {/if}
            {undef $text}
        {/if}


      <p class="link">
        <a href="{$openpa.content_link.full_link}" title="{$node.name|wash()}">Leggi</a>
      </p>

    </div>
  </div>
</div>