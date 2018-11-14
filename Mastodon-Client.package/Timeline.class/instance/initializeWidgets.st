initialization
initializeWidgets
	titleLabel := self newLabel.
	testButton := self newButton.
	messageList := self newList.
	
	titleLabel label: 'Test label here'.
	testButton label: 'Test button'.