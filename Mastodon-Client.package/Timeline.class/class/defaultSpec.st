specs
defaultSpec
	^SpecLayout composed
		newRow: [ :row | row add: #titleLabel ] origin: 0@0 corner: 1@0.3;
		newRow: [ :row | row add: #messageList ] origin: 0@0.3 corner: 1@0.7;
		newRow: [ :row | row add: #testButton ] origin: 0@0.7 corner: 1@1;
		yourself.