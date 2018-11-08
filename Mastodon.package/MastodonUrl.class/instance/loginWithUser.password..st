mastodonInit
loginWithUser: user password: password
	"Log in to a mastodon server. Returns an instance of MastodonClient."
	
	| result json |
	
	result := ZnClient new 
		enforceHttpSuccess: true;
		https;
		host: url;
		addPath: 'oauth';
		addPath: 'token';
		queryAt: 'client_id' add: self clientId;
		queryAt: 'client_secret' add: self clientSecret;
		queryAt: 'grant_type' add: 'password';
		queryAt: 'username' add: user;
		queryAt: 'password' add: password;
		queryAt: 'scope' add: 'read write follow';
		post;
		response.
		
	json := NeoJSONReader fromString: result entity string.
	^MastodonClient newWithUrl: self token: (json at: 'access_token').