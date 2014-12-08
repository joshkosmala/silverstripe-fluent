TODO: Finish this page. Dumping notes for future reference.

The below is how you display a link to a translated version of an object (in this instance a Page) ONLY IF a translation for that object exists.


Page class:

    public function LocaleInformation($locale = null) {
        $data = parent::LocaleInformation($locale);
        $data->HasTranslation = $this->HasTranslationFor($locale);
        return $data;
    }

    /**
    Determine if there is a translation for this Object or not (at the moment, Page, Content)
     */
    public function HasTranslationFor($locale) {
        $default = Fluent::default_locale();
        if($default === $locale) return true;

        $localeField = Fluent::db_field_for_locale('Content' ,$locale);
        $defaultField = Fluent::db_field_for_locale('Content', $default);

        // Check if the localised field has a non-default value
        return !empty($this->$localeField) && $this->$localeField != $this->defaultField;
    }


LocaleMenu.ss

<% if Locales %>
<div class="left">Locale <span class="arrow">&rarr;</span>
	<nav class="primary">
		<ul>
            <% loop $Locales %>
                <% if $HasTranslation %>
                    <li class="$LinkingMode">
                        <a href="$Link.ATT" <% if $LinkingMode != 'invalid' %>rel="alternate" hreflang="$LocaleRFC1766"<% end_if %>>$Title.XML</a>
                    </li>
                <% end_if %>
            <% end_loop %>
		</ul>
	</nav>
</div>
<% end_if %>