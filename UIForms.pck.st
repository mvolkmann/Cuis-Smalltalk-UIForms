'From Cuis7.3 [latest update: #7044] on 12 February 2025 at 1:37:02 pm'!
'Description '!
!provides: 'UIForms' 1 35!
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

!classDefinition: #RadioButtonGroup category: #UIForms!
LayoutMorph subclass: #RadioButtonGroup
	instanceVariableNames: 'labelArray valueArray'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'RadioButtonGroup class' category: #UIForms!
RadioButtonGroup class
	instanceVariableNames: 'labelArray valueArray'!

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

!classDefinition: #BasicRadioButtonMorph category: #UIForms!
BoxMorph subclass: #BasicRadioButtonMorph
	instanceVariableNames: 'borderColor borderWidth fillColor font height hoverColor hovered label onChange selected separation value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'BasicRadioButtonMorph class' category: #UIForms!
BasicRadioButtonMorph class
	instanceVariableNames: ''!

!classDefinition: #CanvasDemo category: #UIForms!
BoxMorph subclass: #CanvasDemo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'CanvasDemo class' category: #UIForms!
CanvasDemo class
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

!BasicRadioButtonMorph commentStamp: '<historical>' prior: 0!
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

!RadioButtonGroup methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 13:01:09'!
initialize

	super initialize! !

!RadioButtonGroup methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 13:32:52'!
labels: aLabelArray values: aValueArray
	| onChange |

	labelArray := aLabelArray.
	valueArray := aValueArray.
	
	onChange := [ :value |
		'selected value is {1}.' format: { value } :: print.
		self submorphs do: [ :radioButton |
			radioButton value logAs: 'radioButton value'.
			radioButton selected: (radioButton value = value).
		].
	].
	
	self gap: 10.
	labelArray with: valueArray do: [ :label :value |
		| radioButton |
		
		radioButton := BasicRadioButtonMorph label: label value: value.
		radioButton onChange: onChange.
		self addMorph: radioButton.
	].! !

!RadioButtonGroup class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 12:59:47'!
labels: aLabelArray values: aValueArray
	| answer |
	
	answer := self newRow.
	answer labels: aLabelArray values:​ aValueArray.
	^ answer.! !

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

!Greeter methodsFor: 'initialization' stamp: 'RMV 2/12/2025 13:20:55'!
initialize
	| ageRow button1 button2 checkbox column greetingLabel moodLabel nameRow radioButtonGroup |
	
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
	
	radioButtonGroup := RadioButtonGroup labels: #(Red Green Blue) values: #($r $g $b).
	"radioButton onChange: [ :selected |
		'Red radiobutton selected?' print
	]."
	
	button1 := PluggableButtonMorph model: self action: #handleButtonClick.
	button1 label: 'Click Me'.
	
	button2 := BasicButtonMorph label: 'Click Me' onClick: [ self handleButtonClick ].
	button2 fillColor: Color yellow; hoverColor: Color green muchLighter; textColor: Color red.
	button2 borderColor: Color blue; borderWidth: 6.

	column := self layoutMorph.
	column separation: 10. "between child morphs; defaults to 0"
	column padding: 10. "around window edges; must set after separation"
	column
		addMorph: nameRow fixedHeight: 0; "to use minimum height that fits row children"
		addMorph: ageRow fixedHeight: 0; "to use minimum height that fits row children"
		addMorph: checkbox;
		addMorph: radioButtonGroup;
		addMorph: moodLabel;
		addMorph: button1;
		addMorph: button2;
		addMorph: greetingLabel.
	
	"Left align all child morphs of column."
	column submorphs do: [ :morph | morph layoutSpec offAxisEdgeWeight: #leftOrTop ].! !

!Greeter methodsFor: 'as yet unclassified' stamp: 'RMV 2/1/2025 16:36:20'!
handleButtonClick

	'got button click' print.! !

!Greeter class methodsFor: 'as yet unclassified' stamp: 'RMV 2/7/2025 16:54:42'!
open
	| extent window |
		
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

!BasicButtonMorph methodsFor: 'drawing' stamp: 'RMV 2/10/2025 11:07:54'!
drawOn: aCanvas
	| borderRect buttonColor buttonRect height radius width |
			
	radius := padding x max: padding y.

	borderWidth = 0 ifFalse: [
		borderRect := Rectangle origin: 0 @ 0 extent: extent.
		aCanvas roundRect: borderRect color: borderColor radius: radius.
	].
	
	width := extent x - (borderWidth * 2).
	height := extent y - (borderWidth * 2).
	buttonRect := Rectangle origin: borderWidth @ borderWidth extent: width @ height.
	buttonColor := hovered ifTrue: hoverColor ifFalse: fillColor.
	aCanvas roundRect: buttonRect color: buttonColor radius: radius - borderWidth.
	
	aCanvas
		drawString: label
		from: 1
		to: label size
		atBaseline: (borderWidth + padding x) @ (borderWidth + (padding y + font pointSize))
		font: font
		color: textColor! !

!BasicButtonMorph methodsFor: 'initialization' stamp: 'RMV 2/10/2025 10:58:12'!
initialize
	
	super initialize.
	
	borderWidth := 0.
	color := Color white.
	fillColor := `Color black alpha: 0.1`.
	font := FontFamily defaultFamilyAndPointSize.
	hoverColor := `Color black alpha: 0.2`.
	hovered := false.
	padding := 10 @ 10.
	textColor := Color black.! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:16'!
handlesMouseDown: aMouseEvent
	
	^ true! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:21'!
handlesMouseOver: aMouseEvent
	
	^ true! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:26'!
label: aString
	
	label := aString! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:31'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	
	onClick ifNotNil: [onClick value]! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:35'!
mouseEnter: aMouseEvent
	
	hovered := true.
	self redrawNeeded ! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:39'!
mouseLeave: aMouseEvent
	
	hovered := false.
	self redrawNeeded ! !

!BasicButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:53:04'!
onClick: aBlock
	
	onClick := aBlock! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:52:08'!
fillColor
	
	^ fillColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:52:04'!
fillColor: aColor
	
	fillColor := aColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:59'!
font
	
	^ font! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:55'!
font: aFont
	
	font := aFont! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:51'!
hoverColor
	
	^ hoverColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:47'!
hoverColor: aColor
	
	hoverColor := aColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 11:04:44'!
morphExtent
	| height labelHeight labelWidth width |
	
	font ifNil: [ font := FontFamily defaultFamilyAndPointSize ].
	labelWidth := font widthOfString: label.
	labelHeight := font pointSize. "TODO: correct?"
	width := borderWidth + padding x * 2 + labelWidth.
	height := borderWidth + padding y * 2 + labelHeight.
	^ width @ height.
	
! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:35'!
requiresVectorCanvas
	
	^ true! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:27'!
textColor
	
	^ textColor! !

!BasicButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:31'!
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

!BasicCheckboxMorph methodsFor: 'initialization' stamp: 'RMV 2/11/2025 09:10:25'!
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

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:09:29'!
handlesMouseDown: aMouseEvent
	
	^ true! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:09:33'!
handlesMouseOver: aMouseEvent
	
	^ true! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:09:40'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	
	checked := checked not.
	self redrawNeeded.
	onChange ifNotNil: [onChange value: checked]! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:09:44'!
mouseEnter: aMouseEvent
	
	hovered := true.
	self redrawNeeded ! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:09:48'!
mouseLeave: aMouseEvent
	
	hovered := false.
	self redrawNeeded ! !

!BasicCheckboxMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:09:53'!
onChange: aBlock
	
	onChange := aBlock! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 19:11:36'!
checked
	
	^ checked! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/4/2025 19:11:41'!
checked: aBoolean
	
	checked := aBoolean.
	self redrawNeeded! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/11/2025 09:10:06'!
hoverColor
	
	^ hoverColor! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/11/2025 09:10:10'!
hoverColor: aColor
	
	hoverColor := aColor! !

!BasicCheckboxMorph methodsFor: 'accessing' stamp: 'RMV 2/11/2025 09:10:14'!
requiresVectorCanvas
	
	^ true! !

!BasicRadioButtonMorph methodsFor: 'drawing' stamp: 'RMV 2/12/2025 13:32:03'!
drawOn: aCanvas
	| color halfHeight labelX labelY |
		
	halfHeight := height / 2.
	color := hovered ifTrue: [ borderColor muchDarker ] ifFalse: borderColor.
	aCanvas strokeWidth: 2 color: color do: [
		aCanvas circleCenter: halfHeight @ halfHeight radius: halfHeight
	].

	selected logAs: 'selected'.
	selected ifTrue: [
		aCanvas fillColor: Color green do: [
			aCanvas circleCenter: halfHeight @ halfHeight radius: halfHeight - 3
		].
	].

	labelX := height + separation.
	labelY := halfHeight + (font pointSize / 2) - 1.
	aCanvas
		drawString: label
		from: 1
		to: label size
		atBaseline: labelX @ labelY
		font: font
		color: Color black.
	
	selected ifTrue: [
		"Draw inner circle."
	].
! !

!BasicRadioButtonMorph methodsFor: 'initialization' stamp: 'RMV 2/12/2025 13:09:39'!
initialize
	
	super initialize.
	
	borderColor := Color gray muchLighter.
	borderWidth := 1.
	fillColor := Color gray.
	font := FontFamily defaultFamilyAndPointSize.
	height := 20.
	hovered := false.
	hoverColor := borderColor alpha: 0.1.
	label := ''.
	onChange := [ :isSelected | ].
	selected := false.
	separation := 5.
	
	self morphExtent: 100 @ 30.! !

!BasicRadioButtonMorph methodsFor: 'initialization' stamp: 'RMV 2/12/2025 12:28:22'!
morphExtent
	| labelWidth |

	labelWidth := font widthOfString: label.	
	^ (height + separation + labelWidth) @ height.! !

!BasicRadioButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
handlesMouseDown: aMouseEvent
	
	^ true! !

!BasicRadioButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
handlesMouseOver: aMouseEvent
	
	^ true! !

!BasicRadioButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/12/2025 13:34:37'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	
	selected := selected not.
	self redrawNeeded.
	'got mouse down on radio button with value {1}' format: { value } :: print.
	onChange ifNotNil: [ onChange value: value ]! !

!BasicRadioButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
mouseEnter: aMouseEvent
	
	hovered := true.
	self redrawNeeded ! !

!BasicRadioButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
mouseLeave: aMouseEvent
	
	hovered := false.
	self redrawNeeded ! !

!BasicRadioButtonMorph methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
onChange: aBlock
	
	onChange := aBlock! !

!BasicRadioButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/11/2025 09:10:51'!
hoverColor
	
	^ hoverColor! !

!BasicRadioButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/11/2025 09:10:51'!
hoverColor: aColor
	
	hoverColor := aColor! !

!BasicRadioButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/12/2025 12:39:19'!
label: aString value: anObject selected: aBoolean

	label := aString.
	value := anObject.
	selected := aBoolean.
! !

!BasicRadioButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/11/2025 09:10:51'!
requiresVectorCanvas
	
	^ true! !

!BasicRadioButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/11/2025 18:34:11'!
selected
	
	^ selected! !

!BasicRadioButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/12/2025 13:31:45'!
selected: aBoolean
	
	selected := aBoolean.
	self redrawNeeded.! !

!BasicRadioButtonMorph methodsFor: 'accessing' stamp: 'RMV 2/12/2025 13:36:31'!
value
	
	^ value! !

!BasicRadioButtonMorph class methodsFor: 'as yet unclassified' stamp: 'RMV 2/11/2025 18:19:56'!
label: aString

	^ self label: aString selected: false.! !

!BasicRadioButtonMorph class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 12:40:08'!
label: aString selected: aBoolean	
	
	^ self new label: aString value: aString selected: aBoolean
! !

!BasicRadioButtonMorph class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 12:39:58'!
label: labelString value: anObject

	^ self label: labelString value: anObject selected: false.! !

!BasicRadioButtonMorph class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 12:39:46'!
label: aString value: anObject selected: aBoolean	
	
	^ self new label: aString value: anObject selected: aBoolean
! !

!CanvasDemo methodsFor: 'as yet unclassified' stamp: 'RMV 2/11/2025 09:14:04'!
drawOn: aCanvas
	| borderWidth buttonHeight buttonOrigin buttonWidth font height innerRect label outerRect padding radius width |
		
	"super drawOn: aCanvas."
	aCanvas
		fillRectangle: self localBounds
		color: `Color yellow`.
	
	width := extent x.
	height := extent y.
	borderWidth := 10.
	buttonOrigin := 0@0.
	buttonWidth := 200.
	buttonHeight := 50.
	outerRect := Rectangle origin: buttonOrigin extent: buttonWidth @ buttonHeight.
	innerRect := Rectangle
		origin: (buttonOrigin x + borderWidth) @ (buttonOrigin y + borderWidth)
		extent: (buttonWidth - (borderWidth * 2)) @ (buttonHeight - (borderWidth * 2)).
	
	aCanvas strokeWidth: 5 color: Color red do: [
		aCanvas moveTo: 0 @ 0.
		aCanvas lineTo: width @ height.
	].

	radius := 10.
	aCanvas roundRect: outerRect color: Color blue radius: radius * 2.
	aCanvas roundRect: innerRect color: Color green radius: radius.
	
	font := FontFamily defaultFamilyAndPointSize.
	label := 'My Demo'.
	padding := 5 @ 8.
	aCanvas
		drawString: label
		from: 1
		to: label size
		atBaseline: (borderWidth + padding x) @ (borderWidth + (padding y + font pointSize))
		font: font
		color: Color black.
		
	aCanvas strokeWidth: 5 color: Color blue do: [
		aCanvas circleCenter: 200 @ 200 radius: 100
	].


! !

!CanvasDemo methodsFor: 'as yet unclassified' stamp: 'RMV 2/10/2025 10:22:26'!
initialize
	
	super initialize.
	self morphExtent: 800 @ 600.
! !

!CanvasDemo methodsFor: 'as yet unclassified' stamp: 'RMV 2/10/2025 10:11:26'!
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
