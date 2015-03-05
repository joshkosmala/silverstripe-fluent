<% if $Locales %>
	<div class="locale">
			<nav class="primary">
				<ul>
					<li class="white"><% loop $Locales.Limit(1) %><% if $HasTranslation %>$LanguageNative<% end_if %><% end_loop %></li>
				<ul>
					<%--<% loop $Locales %>
						<% if $HasTranslation %>
							<li class="$LinkingMode">
								<a href="$Link.ATT" <% if $LinkingMode != 'invalid' %>rel="alternate" hreflang="$LocaleRFC1766"<% end_if %>>$LanguageNative</a>
							</li>
						<% end_if %>
					<% end_loop %> --%>
				</ul>
                </ul>
			</nav>
	</div>
<% end_if %>