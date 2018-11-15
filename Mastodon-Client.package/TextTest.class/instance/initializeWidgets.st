initialization
initializeWidgets
	| content |

	text := self newText.

	content := 'this is the content of the text box' asText.
	content addAttribute: (TextEmphasis bold) from: 2 to: 10.
	text text: content.

	button := self newButton.
	button label: 'Reload content'.