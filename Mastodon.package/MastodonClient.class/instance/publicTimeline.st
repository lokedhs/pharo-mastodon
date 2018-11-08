timeline
publicTimeline
	"Returns a list of messages in the public timeline."
	| client result json |
	client := self makeZnClient: #('timelines' 'public').
	result := client get; response.
	json := NeoJSONReader fromString: result entity string.
	^json collect: [ :v | MastodonStatus new updateFromJson: v ].
	