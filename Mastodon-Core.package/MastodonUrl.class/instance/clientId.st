mastodonInit
clientId 
	clientId isNil
		ifTrue: [ self requestIdAndSecret ].
	^ clientId