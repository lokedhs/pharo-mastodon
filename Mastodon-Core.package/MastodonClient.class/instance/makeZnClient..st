networkutils
makeZnClient: path
	"Create a ZnClient with the correct authentication"
	| client |
	client := ZnClient new
		enforceHttpSuccess: true;
		https;
		host: mastodonUrl url;
		headerAt: 'authorization' add: ('Bearer ', token);
		addPath: 'api';
		addPath: 'v1';
		yourself.
	path do: [ :e | client addPath: e ].
	^client