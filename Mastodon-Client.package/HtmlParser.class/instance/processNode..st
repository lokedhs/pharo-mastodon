private
processNode: node
 	| start end n |
	node hasChildren
		ifTrue: [
			start := content size.
			n := node name.
			((n = 'p') and: (content size > 0)) ifTrue: [ content append: Character cr; append: Character cr ].	
			self iterateNodes: node.
			end := content size.
			(end > start) ifTrue: [
				(n = 'a') ifTrue: [ Transcript show: 'url: '; show: (node attributeAt: 'href'); cr ].
				(n = 'b' or: n = 'strong') ifTrue: [ content addAttribute: (TextEmphasis bold) from: start to: end - 1 ].
				(n = 'i' or: n = 'emph') ifTrue: [ content addAttribute: (TextEmphasis italic) from: start to: end - 1 ].
				(n = 'a') ifTrue: [ content addAttribute: (TextURL new url: (node attributeAt: 'href'); yourself) from: start to: end - 1 ] ] ].
	node isStringNode
		ifTrue: [ content append: node string. ]