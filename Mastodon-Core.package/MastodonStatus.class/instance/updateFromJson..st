instance initalization
updateFromJson: json
	acct := MastodonAccount new updateFromJson: (json at: 'account').
	content := json at: 'content'.