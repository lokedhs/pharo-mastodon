typing/selecting keys
find: url
	"Finds a MastodonUrl instance with the given url"

	servers isNil ifTrue: [ servers := Dictionary new ].
	^servers at: url ifAbsentPut: [ MastodonUrl new url: url; yourself ].
	