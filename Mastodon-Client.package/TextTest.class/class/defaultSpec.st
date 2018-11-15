specs
defaultSpec
	^SpecLayout composed
		newRow: [ :row | row add: #text ] origin: 0@0 corner: 1@0.7;
		newRow: [ :row | row add: #button ] origin: 0@0.7 corner: 1@1;
		yourself.