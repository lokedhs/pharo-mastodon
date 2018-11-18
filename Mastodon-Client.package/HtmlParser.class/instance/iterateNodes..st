private
iterateNodes: doc
	doc nodesDo: [ :node | self processNode: node ]