initialization
initializePresenter
	clickCount := 0.
	testButton action: [
		clickCount := clickCount + 1.
		titleLabel label: 'click count: ',(clickCount asString) ].