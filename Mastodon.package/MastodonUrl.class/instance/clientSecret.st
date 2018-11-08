mastodonInit
clientSecret
	clientSecret isNil
		ifTrue: [ self requestIdAndSecret ].
	^ clientSecret