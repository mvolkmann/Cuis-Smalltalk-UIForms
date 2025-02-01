'From Cuis7.3 [latest update: #7044] on 1 February 2025 at 4:04:14 pm'!
'Description '!
!provides: 'UIForms' 1 0!
SystemOrganization addCategory: #UIForms!


!classDefinition: #Greeter category: #UIForms!
SystemWindow subclass: #Greeter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'Greeter class' category: #UIForms!
Greeter class
	instanceVariableNames: ''!


!Greeter methodsFor: 'initialization' stamp: 'RMV 2/1/2025 16:02:45'!
initialize
	| ageInput ageRow column greetingLabel nameInput nameRow |
	
	super initialize.
		
	self setLabel: 'Greeter'.
	
	greetingLabel := LabelMorph contents: ''.
		
	nameInput := TextModelMorph withModel: (TextModel withText: '').
	nameInput tabToFocus: true.
	nameInput emptyTextDisplayMessage: 'Enter your name'.
	
	"Update greetingLabel every time the contents of nameInput changes."
	nameInput keystrokeAction: [ :evt |
		| name |
		
		name := nameInput text.
		greetingLabel contents: (name isEmpty
			ifTrue: ''
			ifFalse: [ 'Hello ', name, '!!' ]
		).
	].
	
	ageInput := TextModelMorph withModel: (TextModel withText: '').
	ageInput tabToFocus: true.

	"Don't warn the user that changes have not been saved when the window is closed."
	nameInput askBeforeDiscardingEdits: false.
	ageInput askBeforeDiscardingEdits: false.
	
	nameRow := LayoutMorph newRow.
	nameRow separation: 10. "between child morphs; defaults to 0"
	nameRow padding: 0. "must set after separation"
	nameRow
		addMorph: (LabelMorph contents: 'Name:');
		addMorph: nameInput proportionalWidth: 1. "fills row"

	ageRow := LayoutMorph newRow.
	ageRow separation: 10.
	ageRow padding: 0.
	ageRow
		addMorph: (LabelMorph contents: 'Age:');
		addMorph: ageInput proportionalWidth: 1. "fills row"

	column := self layoutMorph.
	column separation: 10. "between child morphs; defaults to 0"
	column padding: 10. "around window edges; must set after separation"
	column
		addMorph: nameRow fixedHeight: 0; "to use minimum height that fits row children"
		addMorph: ageRow fixedHeight: 0; "to use minimum height that fits row children"
		addMorph: greetingLabel.
	
	"To left align all child morphs of column ...
	column submorphs do: [ :morph | morph layoutSpec offAxisEdgeWeight: #leftOrTop ]."! !

!Greeter class methodsFor: 'as yet unclassified' stamp: 'RMV 2/1/2025 16:02:45'!
open
	| extent window |
	
	window := self new.
	window openInWorld.
	
	"Set window size to the smallest height that contains its submorphs.
	This must be done AFTER the window is opened."
	extent := window layoutMorph minimumExtent.
	window morphExtent: 300 @ extent y.! !

!Greeter class methodsFor: 'as yet unclassified' stamp: 'RMV 2/1/2025 16:03:03'!
worldMenuOptions
	^`{
		{
			#submenuOf -> TheWorldMenu openLabel.
			#itemGroup -> 10.
			#itemOrder -> 42.
			#label -> 'Greeter'.
			#object -> Greeter.
			#selector -> #open.
			#icon -> #chatIcon.
			#balloonText -> 'Opens a window where you can greet yourself'.
		} asDictionary
	}`! !
