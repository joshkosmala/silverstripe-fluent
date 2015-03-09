<% if $Locales %>
	<div class="locale">
			<nav class="primary">
				<% with $LocaleInformation($CurrentLocale) %><% if $HasTranslation %><a href="$Link.ATT" class="localeSelect" aria-controls="localeList">$LanguageNative</a><% end_if %><% end_with %>
					<ul id="localeList">
						<% loop $Locales %>
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