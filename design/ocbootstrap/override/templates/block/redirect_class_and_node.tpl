{if is_set($block.custom_attributes.color_style)}<div class="color color-{$block.custom_attributes.color_style}">{/if}
<div class="widget {$block.view}">
    <div class="widget_title">
        <h3>{$block.name|wash()}</h3>
    </div>
    <div class="widget_content">
        <form id="search-form-{$block.id}" action="{'ezajax/search'|ezurl('no')}" method="post">
            <input class="form-control" id="search-string-{$block.id}" type="text" name="SearchStr" value="" />
            <input id="search-button-{$block.id}" class="button" type="submit" name="SearchButton" value="Search" />
        </form>

        <div id="search-results-{$block.id}"></div>
        {ezscript_require( array( 'ezjsc::yui3', 'ezjsc::yui3io', 'ezajaxsearch.js' ) )}

        <script type="text/javascript">
            eZAJAXSearch.cfg = {ldelim}
                searchstring: '#search-string-{$block.id}',
                searchbutton: '#search-button-{$block.id}',
                searchresults: '#search-results-{$block.id}',
                resulttemplate: '<div class="result-item float-break"><div class="item-title"><a href="{ldelim}url_alias{rdelim}">{ldelim}title{rdelim}</a></div><div class="item-published-date">[{ldelim}class_name{rdelim}] {ldelim}date{rdelim}</div></div>'
                {rdelim};
            eZAJAXSearch.init();
        </script>
    </div>
</div>
{if is_set($block.custom_attributes.color_style)}</div>{/if}