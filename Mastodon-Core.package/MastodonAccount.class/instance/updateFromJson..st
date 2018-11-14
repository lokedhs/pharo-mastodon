instance initalization
updateFromJson: json
	username := json at: 'username'.
	url := json at: 'url'.
	createdAt := json at: 'created_at'.
	id := json at: 'id'.
	acct := json at: 'acct'.
	note := json at: 'note'.
	followersCount := json at: 'followers_count'.
	followingCount := json at: 'following_count'.