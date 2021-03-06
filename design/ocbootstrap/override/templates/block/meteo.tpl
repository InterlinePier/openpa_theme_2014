{cache-block expiry=7200}
{def $content=$block.valid_nodes[0].data_map.meteo.content}
{if $content}
{if is_set($block.custom_attributes.color_style)}<div class="color color-{$block.custom_attributes.color_style}">{/if}
{if $block.name}<h2 class="hide block-title">{$block.name|wash()}</h2>{else}<h2 class="hide">Meteo</h2>{/if}

<div class="widget {$block.view}">
  {if $block.name|ne('')}
    <div class="widget_title">
        <h3>{node_view_gui content_node=$valid_node view=text_linked text=$block.name}</h3>
    </div>
  {/if}
  <div class="widget_content">
  <div class="row">
    <div class="col-md-4 text-center">
      <strong>{$content.Oggi.Data}</strong>
      <div class="image"><img src="{$content.Oggi.iconaS}" alt="{$content.Oggi.desciconaS}" title="{$content.Oggi.desciconaS}" /></div>
      <div class="gradi">{$content.Oggi.TempMaxValle}&deg;C</div>
    </div>
  
    <div class="col-md-4 text-center">
      <strong>{$content.Domani.Data}</strong>
      <div class="image"><img src="{$content.Domani.iconaS12}" alt="{$content.Domani.desciconaS12}" title="{$content.Domani.desciconaS12}" /></div>
      <div class="gradi"> {$content.Domani.TempMinValle}&deg;C / {$content.Domani.TempMaxValle}&deg;C</div>
    </div>
  
    <div class="col-md-4 text-center">
      <strong>{$content.DopoDomani.Data}</strong>
      <div class="image"><img src="{$content.DopoDomani.iconaS12}" alt="{$content.DopoDomani.desciconaS12}" title="{$content.DopoDomani.desciconaS12}" /></div>
      <div class="gradi">  {$content.DopoDomani.TempMinValle}&deg;C / {$content.DopoDomani.TempMaxValle}&deg;C</div>
    </div>
    
  </div>
  <div class="row">
    <div class="col-md-12 text-right m_top_20">
      <p><a title="Vai a Meteo Trentino" href="http://www.meteotrentino.it/bollettini/today/generale_it.aspx?ID=7" class="btn btn-info btn-xs">Dati Meteo Trentino</a></p>
    </div>
  </div>
  </div>

</div>
{if is_set($block.custom_attributes.color_style)}</div>{/if}
{/if}
{/cache-block}
