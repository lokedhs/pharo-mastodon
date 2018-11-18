initialization
initializeWidgets
	| content |
	text := self newText.
	content := HtmlParser new
		parse: '<p>foo <b>test <i>abc</i></b></p><p>some <i>more</i> text <a href="http://www.foo.com/">some link</a></p>';
		content.
	text text: content.
	button := self newButton.
	button label: 'Reload content'