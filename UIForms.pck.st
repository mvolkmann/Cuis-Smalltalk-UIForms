'From Cuis7.3 [latest update: #7044] on 4 February 2025 at 7:17:37 pm'!
'Description '!
!provides: 'UIForms' 1 9!
SystemOrganization addCategory: #UIForms!


!classDefinition: #EditableLabelMorph category: #UIForms!
LayoutMorph subclass: #EditableLabelMorph
	instanceVariableNames: 'label textEntry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'EditableLabelMorph class' category: #UIForms!
EditableLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #LabelledCheckboxMorph category: #UIForms!
LayoutMorph subclass: #LabelledCheckboxMorph
	instanceVariableNames: 'checkbox'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'LabelledCheckboxMorph class' category: #UIForms!
LabelledCheckboxMorph class
	instanceVariableNames: ''!

!classDefinition: #LabelledTextMorph category: #UIForms!
LayoutMorph subclass: #LabelledTextMorph
	instanceVariableNames: 'label textModelMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'LabelledTextMorph class' category: #UIForms!
LabelledTextMorph class
	instanceVariableNames: 'label model'!

!classDefinition: #TodosPane category: #UIForms!
LayoutMorph subclass: #TodosPane
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'TodosPane class' category: #UIForms!
TodosPane class
	instanceVariableNames: ''!

!classDefinition: #Greeter category: #UIForms!
SystemWindow subclass: #Greeter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'Greeter class' category: #UIForms!
Greeter class
	instanceVariableNames: ''!

!classDefinition: #BasicButtonMorph category: #UIForms!
BorderedBoxMorph subclass: #BasicButtonMorph
	instanceVariableNames: 'fillColor font hoverColor hovered label onClick textColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'BasicButtonMorph class' category: #UIForms!
BasicButtonMorph class
	instanceVariableNames: 'label onClick'!

!classDefinition: #BasicCheckboxMorph category: #UIForms!
BorderedBoxMorph subclass: #BasicCheckboxMorph
	instanceVariableNames: 'checked fillColor hoverColor hovered onChange'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'BasicCheckboxMorph class' category: #UIForms!
BasicCheckboxMorph class
	instanceVariableNames: ''!

!classDefinition: #Todo category: #UIForms!
Object subclass: #Todo
	instanceVariableNames: 'checkbox label labelFont onDelete onDoneToggle row'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'Todo class' category: #UIForms!
Todo class
	instanceVariableNames: ''!

!classDefinition: #TodoApp category: #UIForms!
Object subclass: #TodoApp
	instanceVariableNames: 'scrollPane statusLabel todoEntry todos todosPane window titleLabelx'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'TodoApp class' category: #UIForms!
TodoApp class
	instanceVariableNames: ''!


!EditableLabelMorph commentStamp: 'RMV 8/18/2024 14:50:42' prior: 0!
This is a morph that draws either a LabelMorph or a TextEntry2Morph.
Initially it draws its contents value in a LabelMorph.
If the LabelMorph is clicked, it is make invisible and the TextEntry2Morph is made visible.
This allows users to edit the contents.

Press the return key to save the new contents, make the TextEntry2Morph invisible,
and make the LabelMorph visible with the new contents.

Press the escape key to discard the changes, make the TextEntry2Morph invisible,
and make the LabelMorph visible with the old contents.!

!BasicButtonMorph commentStamp: 'RMV 8/18/2024 14:46:14' prior: 0!
This is a basic button morph that is simpler and easier to understand that PluggableButtonMorph.!

!BasicCheckboxMorph commentStamp: 'RMV 8/18/2024 14:46:57' prior: 0!
This is a basic checkbox morph that is simpler and easier to understand that CheckButtonMorph.
It also has a look that I find more intuitive.!

!Todo commentStamp: 'RMV 8/18/2024 14:54:14' prior: 0!
Instances of this class represent a todo item that has a text description and can be marked as done.
Send #morph to get a morph that represents a todo item.!

!TodoApp commentStamp: 'RMV 8/18/2024 14:45:24' prior: 0!
This is a basic todo application.
It was created as an exercise for learning about Morphic.!

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'RMV 8/17/2024 19:34:42'!
color: aColor
	label ifNotNil: [ label color: aColor ]! !

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'RMV 8/17/2024 15:47:43'!
contents
	^ label contents! !

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'RMV 8/17/2024 15:44:32'!
contents: aString
	label contents: aString.
	textEntry contents: aString.! !

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'RMV 8/17/2024 15:44:17'!
font
	^ label font! !

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'RMV 8/17/2024 15:43:52'!
font: aFont
	label font: aFont.
	textEntry font: aFont.! !

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'RMV 8/17/2024 15:13:45'!
handlesMouseDown: aMouseEvent
	^ true! !

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'rmv 9/1/2024 12:00:31'!
initialize
	super initialize.
	super color: Color transparent.
	
	label := LabelMorph new.
	self addMorph: label.
	
	textEntry := TextEntryMorph new.
	textEntry crAction: [
		label contents: textEntry contents.
		textEntry visible: false.
		label visible: true.
	].

	"TextEntryMorph uses an instance of SimpleTextEditor which is a subclass of Editor.
	The Editor class method initializeKeyboardActions configures
	the action for pressing the escape key be #offerMenuFromEsc:.
	We are using the escape key to trigger hiding the TextEntryMorph and resetting its value.
	So the next line disables showing the help popup."
	textEntry editor class keyboardActions at: 27 + 1 put: #noop:.
	
	textEntry setProperty: #keyStroke: toValue: [ :event |
		event isEsc ifTrue: [
			textEntry visible: false.
			label visible: true.
			textEntry contents: label contents.
		]
	].

	textEntry visible: false.
	self addMorph: textEntry.! !

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'rmv 8/20/2024 08:34:52'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	| worldPosition |
	worldPosition := aMouseEvent eventPosition.
	(label coversPixel: worldPosition) ifTrue: [
		label visible: (label visible not).
		textEntry visible: textEntry visible not.
	]! !

!EditableLabelMorph methodsFor: 'as yet unclassified' stamp: 'RMV 8/17/2024 16:16:50'!
text: aString
	label contents: aString.
	textEntry contents: aString.! !

!EditableLabelMorph class methodsFor: 'as yet unclassified' stamp: 'rmv 8/24/2024 12:12:51'!
new
	"It's necessary to override this method because otherwise
	the superclass LayoutMorph new method triggers an error."
	^ self newRow! !

!LabelledCheckboxMorph methodsFor: 'private' stamp: 'RMV 2/4/2025 19:10:54'!
label: aString checked: aBoolean
	| label |

	checkbox := BasicCheckboxMorph new.
	label := LabelMorph contents: aString.

	self separation: 10.
	self addMorph: checkbox.
	self addMorph: label.
! !

!LabelledCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 19:11:28'!
checked

	^ checkbox checked! !

!LabelledCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 19:12:05'!
checked: aBoolean

	checkbox checked: aBoolean! !

!LabelledCheckboxMorph methodsFor: 'events' stamp: 'RMV 2/4/2025 19:13:32'!
onChange: aBlock

	checkbox onChange: aBlock! !

!LabelledCheckboxMorph class methodsFor: 'instance creation' stamp: 'RMV 2/4/2025 19:10:12'!
label: aString

	^ self label: aString checked: false.! !

!LabelledCheckboxMorph class methodsFor: 'instance creation' stamp: 'RMV 2/4/2025 19:06:21'!
label: aString checked: aBoolean	
	| instance |
	
	instance := self newRow.
	instance label: aString checked: aBoolean.
	^ instance.
! !

!LabelledTextMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 18:45:05'!
input

	^ textModelMorph! !

!LabelledTextMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 18:45:05'!
model

	^ textModelMorph model! !

!LabelledTextMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 18:45:05'!
text

	^ textModelMorph model actualContents! !

!LabelledTextMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 18:45:05'!
text: aString

	textModelMorph model actualContents: aString! !

!LabelledTextMorph methodsFor: 'private' stamp: 'RMV 2/4/2025 18:45:05'!
label: aString

	label := aString! !

!LabelledTextMorph methodsFor: 'initialization' stamp: 'RMV 2/4/2025 19:00:37'!
label: labelString placeholder: phString
	
	label := LabelMorph contents: labelString, ':'.
	
	textModelMorph := TextModelMorph withModel: (TextModel withText: '').
	textModelMorph emptyTextDisplayMessage: phString.
	textModelMorph askBeforeDiscardingEdits: false.
	textModelMorph tabToFocus: true.
	
	"self borderColor: Color red; borderWidth: 1."
	self separation: 10.
	self padding: 0. "must set AFTER separation"
	self addMorph: label.
	self addMorph: textModelMorph proportionalWidth: 1.! !

!LabelledTextMorph methodsFor: 'events' stamp: 'RMV 2/4/2025 18:53:04'!
keystrokeAction: aBlock

	textModelMorph keystrokeAction: aBlock

! !

!LabelledTextMorph class methodsFor: 'instance creation' stamp: 'RMV 2/4/2025 19:00:37'!
label: aString

	| instance |
	instance := self newRow.
	instance label: aString placeholder: nil.
	^ instance.
! !

!LabelledTextMorph class methodsFor: 'instance creation' stamp: 'RMV 2/4/2025 19:00:37'!
label: labelString placeholder: phString

	| instance |
	instance := self newRow.
	instance label: labelString placeholder: phString.
	^ instance.
! !

!TodosPane methodsFor: 'initialization' stamp: 'rmv 9/13/2024 11:00:49'!
initialize
	super initialize.
	self adjustExtent.
	self color: Color transparent.
	! !

!TodosPane methodsFor: 'change reporting' stamp: 'rmv 9/12/2024 21:05:19'!
adjustExtent
	owner ifNotNil: [ self morphWidth: owner viewableWidth ]! !

!TodosPane class methodsFor: 'as yet unclassified' stamp: 'rmv 9/12/2024 20:32:54'!
new
	^ self newColumn! !

!Greeter methodsFor: 'initialization' stamp: 'RMV 2/4/2025 19:16:10'!
initialize
	| ageRow button checkbox column greetingLabel moodLabel nameRow |
	
	super initialize.
		
	self setLabel: 'Greeter'.
	
	greetingLabel := LabelMorph contents: ''.
	
	nameRow := LabelledTextMorph label: 'Name' placeholder: 'Enter your name'.
	
	"Update greetingLabel every time the contents of nameInput changes."
	nameRow keystrokeAction: [ :evt |
		| name |
		
		name := nameRow text.
		greetingLabel contents: (name isEmpty
			ifTrue: ''
			ifFalse: [ 'Hello ', name, '!!' ]
		).
	].
	
	ageRow := LabelledTextMorph label: 'Age'.
	
	moodLabel := LabelMorph contents: 'MOOD'.
	
	checkbox := LabelledCheckboxMorph label: 'Happy?'.
	checkbox onChange: [ :checked |
		moodLabel color: (checked ifTrue: [ Color green ] ifFalse: [ Color red ]).
	].
	
	button := PluggableButtonMorph model: self action: #handleButtonClick.
	button label: 'Click Me'.
	"buttonExtent := button morphExtent.
	button morphExtent: (buttonExtent x + 20) @ buttonExtent y."

	column := self layoutMorph.
	column separation: 10. "between child morphs; defaults to 0"
	column padding: 10. "around window edges; must set after separation"
	column
		addMorph: nameRow fixedHeight: 0; "to use minimum height that fits row children"
		addMorph: ageRow fixedHeight: 0; "to use minimum height that fits row children"
		addMorph: checkbox;
		addMorph: moodLabel;
		addMorph: button;
		addMorph: greetingLabel.
	
	"To left align all child morphs of column ...
	column submorphs do: [ :morph | morph layoutSpec offAxisEdgeWeight: #leftOrTop ]."! !

!Greeter methodsFor: 'as yet unclassified' stamp: 'RMV 2/1/2025 16:36:20'!
handleButtonClick

	'got button click' print.! !

!Greeter class methodsFor: 'as yet unclassified' stamp: 'RMV 2/4/2025 14:50:14'!
open
	| extent window |
	
	"sender := thisContext sender.
	morph := nil.
	[ sender notNil and: [ morph isNil ] ] whileTrue: [
		sender logAs: 'sender'.
		sender receiver logAs: 'receiver'.
		sender receiver isKindOf: Morph :: ifTrue: [ morph = sender receiver ].
		sender := sender sender.
	].
	morph logAs: 'morph'."
	
	window := self new.
	extent := window layoutMorph minimumExtent.
	extent := Point x: 300 y: extent y.
	window morphExtent: extent.
	window openInWorld.! !

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

!BasicButtonMorph methodsFor: 'drawing' stamp: 'RMV 9/23/2024 11:28:39'!
drawOn: aCanvas
	| radius rect rectColor |
		
	rect := Rectangle origin: 0@0 extent: self morphExtent.
	rectColor := hovered ifTrue: hoverColor ifFalse: fillColor.
	radius := padding x max: padding y.
	aCanvas roundRect: rect color: rectColor radius: radius.
	
	aCanvas
		drawString: label
		from: 1
		to: label size
		atBaseline: padding x @ (padding y + font pointSize)
		font: font
		color: textColor! !

!BasicButtonMorph methodsFor: 'initialization' stamp: 'RMV 9/23/2024 11:26:11'!
initialize
	super initialize.
	
	borderWidth := 0.
	color := Color white.
	fillColor := `Color black alpha: 0.1`.
	font := FontFamily defaultFamilyAndPointSize.
	hovered := false.
	hoverColor := `Color black alpha: 0.2`.
	padding := 10 @ 10.
	textColor := Color black.! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 8/15/2024 19:00:16'!
handlesMouseDown: aMouseEvent
	^ true! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 8/15/2024 19:00:16'!
handlesMouseOver: aMouseEvent
	^ true! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 8/15/2024 19:11:04'!
label: aString
	label := aString! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 8/15/2024 19:02:31'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	onClick ifNotNil: [onClick value]! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 8/15/2024 19:00:16'!
mouseEnter: aMouseEvent
	hovered := true.
	self redrawNeeded ! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 8/15/2024 19:00:16'!
mouseLeave: aMouseEvent
	hovered := false.
	self redrawNeeded ! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 8/15/2024 19:00:16'!
onChange: aBlock
	onChange := aBlock! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 8/15/2024 19:02:50'!
onClick: aBlock
	onClick := aBlock! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/16/2024 13:06:53'!
fillColor
	^ fillColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/16/2024 13:06:38'!
fillColor: aColor
	fillColor := aColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/16/2024 12:56:47'!
font
	^ font! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/16/2024 12:56:37'!
font: aFont
	font := aFont! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/15/2024 19:00:16'!
hoverColor
	^ hoverColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/15/2024 19:00:16'!
hoverColor: aColor
	hoverColor := aColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 9/23/2024 11:26:42'!
morphExtent
	| labelHeight labelWidth |
	font ifNil: [ font := FontFamily defaultFamilyAndPointSize ].
	labelWidth := font widthOfString: label.
	labelHeight := font pointSize. "TODO: correct?"
	^ (padding x * 2 + labelWidth) @ (padding y * 2 + labelHeight)
	
! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/15/2024 19:00:16'!
requiresVectorCanvas
	^ true! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/16/2024 16:32:28'!
textColor
	^ textColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 8/16/2024 16:32:36'!
textColor: aColor
	textColor := aColor! !

!BasicButtonMorph class methodsFor: 'as yet unclassified' stamp: 'RMV 8/15/2024 19:10:20'!
label: aString onClick: aBlock
	^ self new label: aString; onClick:​ aBlock! !

!BasicCheckboxMorph methodsFor: 'drawing' stamp: 'RMV 8/15/2024 15:58:15'!
drawOn: aCanvas
	| savedColor x y |
	
	hovered ifTrue: [ savedColor := color. color := hoverColor ].
	super drawOn: aCanvas.
	hovered ifTrue: [ color := savedColor ].

	x := self morphExtent x.
	y := self morphExtent y.
	
	checked ifTrue: [
		| p1 p2 p3 width |
		p1 := (0.2 * x) @ (0.6 * y).
		p2 := (0.4 * x) @ (0.8 * y).
		p3 := (0.8 * x) @ (0.2 * y).
		width := x / 8.
		aCanvas line: p1 to: p2 width: width color: borderColor.
		aCanvas line: p2 to: p3 width: width color: borderColor.
	]
! !

!BasicCheckboxMorph methodsFor: 'initialization' stamp: 'RMV 8/15/2024 18:57:09'!
initialize
	super initialize.
	
	borderColor := Color black.
	borderWidth := 1.
	checked := false.
	color := Color white.
	hovered := false.
	hoverColor := borderColor alpha: 0.1.
	self morphExtent: 20 @ 20.
	
	self layoutSpec: (LayoutSpec fixedWidth: (self morphExtent x) fixedHeight: (self morphExtent y))! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 8/11/2024 19:19:49'!
handlesMouseDown: aMouseEvent
	^ true! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 8/13/2024 18:42:12'!
handlesMouseOver: aMouseEvent
	^ true! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 8/11/2024 19:27:43'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	checked := checked not.
	self redrawNeeded.
	onChange ifNotNil: [onChange value: checked]! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 8/13/2024 18:53:05'!
mouseEnter: aMouseEvent
	hovered := true.
	self redrawNeeded ! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 8/13/2024 18:49:43'!
mouseLeave: aMouseEvent
	hovered := false.
	self redrawNeeded ! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 8/11/2024 19:19:49'!
onChange: aBlock
	onChange := aBlock! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 19:11:36'!
checked
	
	^ checked! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 19:11:41'!
checked: aBoolean
	
	checked := aBoolean.
	self redrawNeeded! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 8/13/2024 18:54:59'!
hoverColor
	^ hoverColor! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 8/13/2024 18:54:49'!
hoverColor: aColor
	hoverColor := aColor! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 8/15/2024 08:43:55'!
requiresVectorCanvas
	^ true! !

!Todo methodsFor: 'accessing' stamp: 'RMV 8/15/2024 18:40:33'!
done
	^ checkbox checked! !

!Todo methodsFor: 'accessing' stamp: 'RMV 8/16/2024 19:30:23'!
done: aBoolean
	checkbox checked: aBoolean! !

!Todo methodsFor: 'accessing' stamp: 'RMV 8/15/2024 18:37:36'!
text
	^ label contents! !

!Todo methodsFor: 'accessing' stamp: 'RMV 8/17/2024 16:16:50'!
text: aString
	label contents: aString.
	label redrawNeeded! !

!Todo methodsFor: 'events-registering' stamp: 'RMV 8/13/2024 19:57:26'!
onDelete: aBlock
	onDelete := aBlock! !

!Todo methodsFor: 'events-registering' stamp: 'RMV 8/13/2024 19:57:43'!
onDoneToggle: aBlock
	onDoneToggle := aBlock! !

!Todo methodsFor: 'initialization' stamp: 'RMV 8/17/2024 15:09:35'!
handleLabelClick: aMouseEvent
	aMouseEvent logAs: 'Todo handleLabelClick: aMouseEvent'.! !

!Todo methodsFor: 'initialization' stamp: 'RMV 2/4/2025 19:17:23'!
initialize
	| button buttonFont |
	
	checkbox := BasicCheckboxMorph new.
	checkbox onChange: [ :checked |
		label color: (checked ifTrue: [ Color gray ] ifFalse: [ Color black ]).
		label font: (checked ifTrue: [ labelFont struckThrough ] ifFalse: [ labelFont ]).
		onDoneToggle value: checked
	].
	
	label := EditableLabelMorph new leftTopAlign.
	label layoutSpec proportionalWidth: 1.
	labelFont := label font.
	
	"The Kurinto Sans font is the only one I've found so far
	that contains the wastebasket Unicode character.
	This font must be installed!!"
	buttonFont := FontFamily familyName: 'Kurinto Sans' pointSize: 18.

	button := BasicButtonMorph
		label: '🗑' "wastebasket Unicode character"
		onClick: [ onDelete value ].
	button fillColor: Color transparent; textColor: Color red.
	button font: buttonFont.
		
	row := LayoutMorph newRow.
	row color: Color transparent.
	row layoutSpec proportionalWidth: 1.
	
	row separation: 10@0.
	row addMorph: checkbox.
	row addMorph: label.
	row addMorph: button.
 
	"Center the submorphs vertically."
	row submorphsDo: [:morph | morph layoutSpec offAxisEdgeWeight: 0.5]! !

!Todo methodsFor: 'morphic' stamp: 'RMV 8/15/2024 18:29:07'!
morph
	^ row! !

!Todo class methodsFor: 'instance creation' stamp: 'RMV 8/17/2024 16:16:50'!
text: aString
	^ self new text: aString; done: false! !

!Todo class methodsFor: 'as yet unclassified' stamp: 'RMV 8/19/2024 15:21:14'!
initialize
	TrueTypeFontFamily readAllTrueTypeFontsIn: (DirectoryEntry trueTypeFontsDirectory / 'KurintoSans')! !

!TodoApp methodsFor: 'initialization' stamp: 'rmv 9/13/2024 10:59:40'!
initialize
	| button extent layout lightBlue row titleLabel |

	titleLabel := LabelMorph new
		contents: 'To Do List';
		color: Color blue.
	
	statusLabel := LabelMorph new
		color: Color gray.
	
	todoEntry := TextEntryMorph contents: ''.
	todoEntry layoutSpec proportionalWidth: 1.
	todoEntry crAction: [ self addTodoFromEntry ].
	
	button := BasicButtonMorph label: 'Add' onClick: [ self addTodoFromEntry ].
	
	row := LayoutMorph newRow
		color: Color transparent;
		separation: 10.
	row layoutSpec proportionalHeight: 0. "defaults to 1"
	row addMorph: todoEntry.
	row addMorph: button.

	todosPane := TodosPane new.

	scrollPane := PluggableScrollPane new.
	scrollPane layoutSpec 	proportionalWidth: 1.
	scrollPane layoutSpec proportionalHeight: 1 minimum: 100.
	scrollPane hHideScrollBar.
	scrollPane color: Color transparent.
	scrollPane scroller: todosPane.

	todos := OrderedCollection new.
	
	"Add initial todos for testing."
	#('buy milk' 'cut grass' 'ride bike' 'run' 'study Smalltalk') do: [ :text |
		self addTodo: text atStart: false
	].

	statusLabel contents: self status.
	
	lightBlue := Color r: 0.450 g: 0.600 b: 0.850.
	window := SystemWindow new
		borderColor: lightBlue;
		setLabel: 'Todo App'.

	layout := window layoutMorph.
	layout color: Color white; padding: 10; separation: 20.
	layout addMorph: titleLabel.
	layout addMorph: statusLabel.
	layout addMorph: row.
	layout addMorph: scrollPane.
	
	todosPane submorphsDo: [:morph | morph leftTopAlign].
	layout submorphsDo: [:morph | morph leftTopAlign].
		
	"This causes the SystemWindow to be sized incorrectly ... too small."
	"window openAtCursor."
	window openInWorld.
	
	"Size the window to the minimum size that holds the contents.
	 This must be done AFTER sending #openInWorld!!
	 This stopped working correctly and I don't know why."
	"window morphExtent: window minimumExtent."
	extent := window minimumExtent.
	window morphExtent: 300 @ extent y.! !

!TodoApp methodsFor: 'accessing' stamp: 'RMV 8/15/2024 18:46:56'!
status
	| remaining |
	remaining := todos
		inject: 0
		into: [ :acc :todo |
			todo done ifTrue: acc ifFalse: acc + 1
		].
	^ '{1} of {2} remaining' format: {remaining. todos size}.! !

!TodoApp methodsFor: 'private' stamp: 'rmv 8/24/2024 13:12:14'!
addTodo: aString atStart: aBoolean
	| todo |
	todo := Todo text: aString.
	todo onDoneToggle: [ :done |
		statusLabel contents: self status
	].
	todo onDelete: [
		todos removeAllSuchThat: [:t | t text = todo text].
		todosPane removeMorph: todo morph.
		todosPane morphHeight: todosPane minimumExtent y.
		statusLabel contents: self status.
	].
	todos add: todo.
	aBoolean
		ifTrue: [ todosPane addMorphBack: todo morph ]
		ifFalse: [ todosPane addMorph: todo morph]
! !

!TodoApp methodsFor: 'private' stamp: 'RMV 8/11/2024 15:10:24'!
addTodoFromEntry
	| text |
	text := todoEntry contents.
	text isEmpty ifFalse: [
		self addTodo: text atStart: true.
		todoEntry contents: ''.
		todoEntry keyboardFocusChange: true
	]! !
Todo initialize!
