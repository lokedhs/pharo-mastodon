specs
defaultSpec
	^SpecLayout composed
		newRow: [ :row | row add: #fromLabel ] origin: 0@0 corner: 1@0.3;
		newRow: [ :row | row add: #content ] origin: 0@0.3 corner: 1@1;
		yourself.