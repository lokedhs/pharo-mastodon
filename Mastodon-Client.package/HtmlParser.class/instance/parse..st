parsing
parse: html
	| doc |
	doc := html parseHTML.
	self iterateNodes: doc.