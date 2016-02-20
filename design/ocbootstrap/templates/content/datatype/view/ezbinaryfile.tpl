{set_defaults( hash(
                'icon_size', 'small',
                'icon_title', $attribute.content.mime_type,
                'icon','no',
                'show_flip', true()
))}

{*def $icon_size='normal'
     $icon_title=$attribute.content.mime_type
     $icon='no'}
{if is_set( $show_flip )|not()}
{def $show_flip = false()}
{/if*}

{if $attribute.has_content}
	{if $attribute.content}
	{switch match=$icon}
		{case match='no'}			
		{/case}
		{case}
			{$attribute.content.mime_type|mimetype_icon( $icon_size, $icon_title )}      
		{/case}
	{/switch}
      <a href={concat("content/download/",$attribute.contentobject_id,"/",$attribute.id,"/file/",$attribute.content.original_filename)|ezurl} title="Scarica il file {$attribute.content.original_filename|wash( xhtml )}">              
        <span title="{$attribute.content.original_filename|wash( xhtml )}"><i class="fa fa-download"></i> Scarica il file</span>      
        <small>(File {$attribute.content.mime_type} {$attribute.content.filesize|si( byte )})</small>
      </a>
	{else}
		{editor_warning('The file could not be found.'|i18n( 'design/ezwebin/view/ezbinaryfile' ) )}
	{/if}
{/if}

{if $show_flip}
    {include uri=flip_template( $attribute.id, $attribute.version ) id=$attribute.id version=$attribute.version view='small'}
{/if}
