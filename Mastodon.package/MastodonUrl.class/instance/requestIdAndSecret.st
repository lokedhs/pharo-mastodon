mastodonInit
requestIdAndSecret
	"Request the client id and secret from the instance"

	| result json |

	result := ZnClient new
		enforceHttpSuccess: true;
		https;
		host: url;
		addPath: 'api';
		addPath: 'v1';
		addPath: 'apps';
		queryAt: 'redirect_uris' add: 'urn:ietf:wg:oauth:2.0:oob';
		queryAt: 'client_name' add: 'mastodon-pharo';
		queryAt: 'scopes' add: 'read write follow';
		post;
		response.

	json := NeoJSONReader fromString: result entity string.
	clientId := json at: 'client_id'.
	clientSecret := json at: 'client_secret'.
