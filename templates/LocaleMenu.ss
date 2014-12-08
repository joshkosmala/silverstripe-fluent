<% if ClassName='OTSMainPage' %>
    <% if Locales %>
        <div class="locale">
            <nav>
                <ul>
                    <li>View this page in: </li>
                    <% loop Locales %>
                        <% if $HasTranslation %>
                            <li class="$LinkingMode">
                                <a href="$Link.ATT" <% if $LinkingMode != 'invalid' %>rel="alternate" hreflang="$LocaleRFC1766"<% end_if %>>$LanguageNative</a>
                            </li>
                        <% end_if %>
                    <% end_loop %>
                </ul>
            </nav>
        </div>
    <% end_if %>
<% end_if %>