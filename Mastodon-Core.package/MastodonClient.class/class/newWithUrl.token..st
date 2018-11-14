instance creation
newWithUrl: url token: token
	^MastodonClient new 
		url: url;
		token: token;
		yourself.