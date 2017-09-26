tests
testIteratingInstancesDeclaredForGivenContext

	| activators context |
	context := CmdToolContextStub2 new.
	activators := OrderedCollection new.
	CmdCommandActivatorExample  
		allDeclaredFor: context
		do: [:activator | activators add: activator].
	
	self assert: activators size equals: 1.
	self assert: activators first commandClass equals: CmdCommandExampleForExtendedContext