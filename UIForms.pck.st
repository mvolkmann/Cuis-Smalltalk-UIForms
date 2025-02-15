'From Cuis7.3 [latest update: #7044] on 15 February 2025 at 4:03:11 pm'!
'Description '!
!provides: 'UIForms' 1 67!
SystemOrganization addCategory: #UIForms!


!classDefinition: #EditableLabelMorf category: #UIForms!
LayoutMorph subclass: #EditableLabelMorf
	instanceVariableNames: 'label textInput'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'EditableLabelMorf class' category: #UIForms!
EditableLabelMorf class
	instanceVariableNames: ''!

!classDefinition: #RadioButtonGroupMorf category: #UIForms!
LayoutMorph subclass: #RadioButtonGroupMorf
	instanceVariableNames: 'labelArray onChange valueArray'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'RadioButtonGroupMorf class' category: #UIForms!
RadioButtonGroupMorf class
	instanceVariableNames: 'labelArray valueArray'!

!classDefinition: #TextInputMorf category: #UIForms!
LayoutMorph subclass: #TextInputMorf
	instanceVariableNames: 'label textModelMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'TextInputMorf class' category: #UIForms!
TextInputMorf class
	instanceVariableNames: 'label model'!

!classDefinition: #Todo category: #UIForms!
LayoutMorph subclass: #Todo
	instanceVariableNames: 'checkbox label labelFont onDelete onDoneToggle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'Todo class' category: #UIForms!
Todo class
	instanceVariableNames: ''!

!classDefinition: #Greeter category: #UIForms!
SystemWindow subclass: #Greeter
	instanceVariableNames: 'selectedColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'Greeter class' category: #UIForms!
Greeter class
	instanceVariableNames: ''!

!classDefinition: #TodoApp category: #UIForms!
SystemWindow subclass: #TodoApp
	instanceVariableNames: 'scrollPane statusLabel todoEntry todos todosPane window titleLabelx'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'TodoApp class' category: #UIForms!
TodoApp class
	instanceVariableNames: ''!

!classDefinition: #ButtonMorf category: #UIForms!
BorderedBoxMorph subclass: #ButtonMorf
	instanceVariableNames: 'fillColor font hoverColor hovered label onClick textColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'ButtonMorf class' category: #UIForms!
ButtonMorf class
	instanceVariableNames: 'label onClick'!

!classDefinition: #CanvasDemo category: #UIForms!
BoxMorph subclass: #CanvasDemo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'CanvasDemo class' category: #UIForms!
CanvasDemo class
	instanceVariableNames: ''!

!classDefinition: #CheckboxMorf category: #UIForms!
BoxMorph subclass: #CheckboxMorf
	instanceVariableNames: 'borderColor checked fillColor font height hovered label onChange separation value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'CheckboxMorf class' category: #UIForms!
CheckboxMorf class
	instanceVariableNames: ''!

!classDefinition: #RadioButtonMorf category: #UIForms!
BoxMorph subclass: #RadioButtonMorf
	instanceVariableNames: 'borderColor fillColor font height hovered label onChange selected separation value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UIForms'!
!classDefinition: 'RadioButtonMorf class' category: #UIForms!
RadioButtonMorf class
	instanceVariableNames: ''!


!EditableLabelMorf commentStamp: 'RMV 8/18/2024 14:50:42' prior: 0!
This is a morph that draws either a LabelMorph or a TextEntry2Morph.
Initially it draws its contents value in a LabelMorph.
If the LabelMorph is clicked, it is make invisible and the TextEntry2Morph is made visible.
This allows users to edit the contents.

Press the return key to save the new contents, make the TextEntry2Morph invisible,
and make the LabelMorph visible with the new contents.

Press the escape key to discard the changes, make the TextEntry2Morph invisible,
and make the LabelMorph visible with the old contents.!

!Todo commentStamp: 'RMV 8/18/2024 14:54:14' prior: 0!
Instances of this class represent a todo item that has a text description and can be marked as done.
Send #morph to get a morph that represents a todo item.!

!TodoApp commentStamp: 'RMV 8/18/2024 14:45:24' prior: 0!
This is a basic todo application.
It was created as an exercise for learning about Morphic.!

!ButtonMorf commentStamp: 'RMV 8/18/2024 14:46:14' prior: 0!
This is a basic button morph that is simpler and easier to understand that PluggableButtonMorph.!

!CheckboxMorf commentStamp: '<historical>' prior: 0!
This is a basic checkbox morph that is simpler and easier to understand that CheckButtonMorph.
It also has a look that I find more intuitive.!

!RadioButtonMorf commentStamp: '<historical>' prior: 0!
This is a basic checkbox morph that is simpler and easier to understand that CheckButtonMorph.
It also has a look that I find more intuitive.!

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 8/17/2024 19:34:42'!
color: aColor
	label ifNotNil: [ label color: aColor ]! !

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/14/2025 13:36:55'!
contents
	
	^ label contents! !

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/14/2025 14:08:05'!
contents: aString
	
	label contents: aString.
	textInput editor actualContents: aString.! !

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/14/2025 13:37:02'!
font
	
	^ label font! !

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/15/2025 14:59:13'!
font: aFont
	
	label font: aFont.
	textInput editor defaultFont: aFont.! !

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/14/2025 13:37:11'!
handlesMouseDown: aMouseEvent
	
	^ true! !

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/15/2025 15:25:00'!
initialize
	
	super initialize.
	super color: Color transparent.
	
	label := LabelMorph new.
	self addMorph: label.
	
	textInput := TextModelMorph withText: '' ::
		wrapFlag: false;
		morphExtent: 200 @ 0; "calculates required height for one line"
		hideScrollBarsIndefinitely;
		askBeforeDiscardingEdits: false;
		visible: false.
	
	textInput keystrokeAction: [ :evt |
		evt isReturnKey ifTrue: [
			label contents: textInput editor actualContents.
			textInput visible: false.
			label visible: true.
		].
		evt isEsc ifTrue: [
			textInput visible: false.
			label visible: true.
			textInput editor actualContents: label contents.
			evt wasHandled: true. "prevents context menu from appearing"
		].
	].

	"TextEntryMorph uses an instance of SimpleTextEditor which is a subclass of Editor.
	The Editor class method initializeKeyboardActions configures
	the action for pressing the escape key be #offerMenuFromEsc:.
	We are using the escape key to trigger hiding the TextEntryMorph and resetting its value.
	So the next line disables showing the context menu."
	textInput editor class keyboardActions at: 27 + 1 put: #noop:.
	
	self addMorph: textInput.! !

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/14/2025 13:45:59'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	| worldPosition |
	
	worldPosition := aMouseEvent eventPosition.
	(label coversPixel: worldPosition) ifTrue: [
		label visible: (label visible not).
		textInput visible: textInput visible not.
	]! !

!EditableLabelMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/14/2025 13:45:59'!
text: aString
	
	label contents: aString.
	textInput contents: aString.! !

!EditableLabelMorf class methodsFor: 'as yet unclassified' stamp: 'rmv 8/24/2024 12:12:51'!
new
	"It's necessary to override this method because otherwise
	the superclass LayoutMorph new method triggers an error."
	^ self newRow! !

!RadioButtonGroupMorf methodsFor: 'private' stamp: 'RMV 2/14/2025 12:44:21'!
labels: aLabelArray values: aValueArray
	| localOnChange |

	labelArray := aLabelArray.
	valueArray := aValueArray.
	
	localOnChange := [ :value |
		self submorphs do: [ :radioButton |
			radioButton selected: (radioButton value = value).
		].
		onChange ifNotNil: [ onChange value: value ].
	].
	
	self gap: 10.
	labelArray with: valueArray do: [ :label :value |
		| radioButton |
		
		radioButton := RadioButtonMorf label: label value: value.
		radioButton onChange: localOnChange.
		self addMorph: radioButton.
	].! !

!RadioButtonGroupMorf methodsFor: 'initialization' stamp: 'RMV 2/12/2025 13:01:09'!
initialize

	super initialize! !

!RadioButtonGroupMorf methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 14:14:34'!
onChange: aBlock

	onChange := aBlock! !

!RadioButtonGroupMorf class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 12:59:47'!
labels: aLabelArray values: aValueArray
	| answer |
	
	answer := self newRow.
	answer labels: aLabelArray values:​ aValueArray.
	^ answer.! !

!TextInputMorf methodsFor: 'accessing' stamp: 'RMV 2/15/2025 14:18:36'!
contents

	^ textModelMorph text! !

!TextInputMorf methodsFor: 'accessing' stamp: 'RMV 2/15/2025 14:18:48'!
contents: aString

	textModelMorph editor actualContents: aString! !

!TextInputMorf methodsFor: 'private' stamp: 'RMV 2/15/2025 15:09:55'!
label: labelString placeholder: phString
	
	labelString ifNotNil: [
		label := LabelMorph contents: labelString, ':'.
		self addMorph: label.
		self separation: 10.
	].
	
	self padding: 0. "must set AFTER separation"

	textModelMorph := TextModelMorph withText: '' ::
		emptyTextDisplayMessage: phString;
		askBeforeDiscardingEdits: false;
		tabToFocus: true.
	
	self addMorph: textModelMorph proportionalWidth: 1.! !

!TextInputMorf methodsFor: 'events' stamp: 'RMV 2/12/2025 19:01:19'!
keystrokeAction: aBlock
	"Evaluate aBlock on each key press.
	This cannot be used if returnAction: is used."

	textModelMorph keystrokeAction: aBlock

! !

!TextInputMorf methodsFor: 'events' stamp: 'RMV 2/12/2025 19:01:26'!
returnAction: aBlock
	"Evaluate aBlock on each return key press.
	This cannot be used if keystrokeAction: is used."

	textModelMorph keystrokeAction: [ :aKeyboardEvent |
		aKeyboardEvent isReturnKey ifTrue: [ aBlock value ]
	]

! !

!TextInputMorf class methodsFor: 'instance creation' stamp: 'RMV 2/12/2025 19:03:54'!
label: aString

	^ self label: aString placeholder: nil
! !

!TextInputMorf class methodsFor: 'instance creation' stamp: 'RMV 2/15/2025 15:08:57'!
label: labelString placeholder: phString
		
	^ self newRow
		label: labelString placeholder: phString
! !

!Todo methodsFor: 'accessing' stamp: 'RMV 2/15/2025 14:31:17'!
done
	
	^ checkbox checked! !

!Todo methodsFor: 'accessing' stamp: 'RMV 2/15/2025 14:31:13'!
done: aBoolean
	
	checkbox checked: aBoolean! !

!Todo methodsFor: 'accessing' stamp: 'RMV 2/15/2025 14:31:09'!
text
	
	^ label contents! !

!Todo methodsFor: 'accessing' stamp: 'RMV 2/15/2025 15:07:33'!
text: aString
	
	label contents: aString! !

!Todo methodsFor: 'events' stamp: 'RMV 2/15/2025 15:01:15'!
onDelete: aBlock
	
	onDelete := aBlock! !

!Todo methodsFor: 'events' stamp: 'RMV 2/15/2025 15:01:09'!
onDoneToggle: aBlock
	
	onDoneToggle := aBlock! !

!Todo methodsFor: 'initialization' stamp: 'RMV 2/15/2025 15:06:22'!
initialize
	| button buttonFont |
	
	super initialize.
		
	checkbox := CheckboxMorf label: nil.
	checkbox onChange: [ :checked |
		label color: (checked ifTrue: [ Color gray ] ifFalse: [ Color black ]).
		label font: (checked ifTrue: [ labelFont struckThrough ] ifFalse: [ labelFont ]).
		onDoneToggle ifNotNil: [ onDoneToggle value: checked ]
	].
	
	label := EditableLabelMorf new.
	label layoutSpec proportionalWidth: 1.
	labelFont := label font.
	
	"The Kurinto Sans font is the only one I've found so far
	that contains the wastebasket Unicode character.
	This font must be installed!!"
	buttonFont := FontFamily familyName: 'Kurinto Sans' pointSize: 18.

	button := ButtonMorf
		label: '🗑' "wastebasket Unicode character"
		onClick: [ onDelete ifNotNil: [ onDelete value ] ].
	button fillColor: Color transparent; textColor: Color red.
	button font: buttonFont.
		
	self layoutSpec proportionalWidth: 1.
	
	self
		color: Color transparent;
		gap: 10;
		addMorph: checkbox;
		addMorph: label;
		addMorph: button.
 
	"Center the submorphs vertically."
	self submorphsDo: [:morph | morph layoutSpec offAxisEdgeWeight: 0.5]! !

!Todo class methodsFor: 'class initialization' stamp: 'RMV 2/14/2025 14:27:55'!
initialize
	"Ensure that a font containing the wastebasket Unicode character is installed."

	TrueTypeFontFamily readAllTrueTypeFontsIn: (DirectoryEntry trueTypeFontsDirectory / 'KurintoSans')! !

!Todo class methodsFor: 'instance creation' stamp: 'RMV 2/12/2025 19:16:26'!
text: aString
	
	^ self newRow
		text: aString;
		done: false! !

!Greeter methodsFor: 'initialization' stamp: 'RMV 2/15/2025 14:36:47'!
initialize
	| ageRow button1 button2 checkbox column greetingLabel moodLabel nameInput radioButtonGroup |
	
	super initialize.
		
	self setLabel: 'Greeter'.
	
	greetingLabel := LabelMorph contents: ''.
	
	nameInput := TextInputMorf label: 'Name' placeholder: 'Enter your name'.
	
	"Update greetingLabel every time the contents of nameInput changes."
	nameInput keystrokeAction: [ :evt |
		| name |
		
		name := nameInput contents.
		greetingLabel contents: (name isEmpty
			ifTrue: ''
			ifFalse: [ 'Hello ', name, '!!' ]
		).
	].
	
	ageRow := TextInputMorf label: 'Age'.
	
	moodLabel := LabelMorph contents: 'MOOD'.
	
	"checkbox := LabelledCheckboxMorph label: 'Happy?'."
	checkbox := CheckboxMorf label: 'Happy?'.
	checkbox onChange: [ :checked |
		moodLabel color: (checked ifTrue: [ Color green ] ifFalse: [ Color red ]).
	].
	
	radioButtonGroup := RadioButtonGroupMorf
		labels: #(Red Green Blue)
		values: { Color red. Color green. Color blue }.
	radioButtonGroup onChange: [ :aColor | moodLabel color: aColor ].
	
	button1 := PluggableButtonMorph model: self action: #handleButtonClick.
	button1 label: 'Click Me'.
	
	button2 := ButtonMorf label: 'Click Me' onClick: [ self handleButtonClick ].
	button2 fillColor: Color yellow; hoverColor: Color green muchLighter; textColor: Color red.
	button2 borderColor: Color blue; borderWidth: 6.

	column := self layoutMorph.
	column separation: 10. "between child morphs; defaults to 0"
	column padding: 10. "around window edges; must set after separation"
	column
		addMorph: nameInput fixedHeight: 0; "to use minimum height that fits row children"
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

!TodoApp methodsFor: 'initialization' stamp: 'RMV 2/15/2025 15:59:59'!
initialize
	| button column lightBlue row |
	
	super initialize.
	self setLabel: 'Todo App'.
	
	statusLabel := LabelMorph new
		color: Color gray.
	
	"todoEntry := TextEntryMorph contents: ''."
	todoEntry := TextInputMorf label: nil.
	todoEntry returnAction: [ self addTodoFromEntry ].
	
	button := ButtonMorf label: 'Add' onClick: [ self addTodoFromEntry ].
	
	row := LayoutMorph newRow
		gap: 10;
		addMorph: todoEntry proportionalWidth: 1;
		addMorph: button.
	row layoutSpec proportionalHeight: 0. "defaults to 1"

	todosPane := LayoutMorph newColumn.

	scrollPane := PluggableScrollPane new.
	scrollPane layoutSpec proportionalWidth: 1.
	scrollPane layoutSpec proportionalHeight: 1 minimum: 100.
	scrollPane hHideScrollBar.
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

	column := self layoutMorph.
	column
		padding: 10;
		gap: 20;
		addMorph: statusLabel;
		addMorph: row;
		addMorph: scrollPane.
	
	column submorphsDo: [ :morph | morph layoutSpec offAxisEdgeWeight: 0 ].! !

!TodoApp methodsFor: 'accessing' stamp: 'RMV 2/15/2025 15:46:06'!
status
	| remaining |
	
	remaining := todos
		inject: 0
		into: [ :acc :todo |
			todo done ifTrue: acc ifFalse: acc + 1
		].
	^ '{1} of {2} remaining' format: {remaining. todos size}.! !

!TodoApp methodsFor: 'private' stamp: 'RMV 2/15/2025 14:23:37'!
addTodo: aString atStart: aBoolean
	| todo |
	
	todo := Todo text: aString.
	todo onDoneToggle: [ :done |
		statusLabel contents: self status
	].
	todo onDelete: [
		todos removeAllSuchThat: [:t | t text = todo text].
		todosPane removeMorph: todo.
		todosPane morphHeight: todosPane minimumExtent y.
		statusLabel contents: self status.
	].
	todos add: todo.
	aBoolean
		ifTrue: [ todosPane addMorphBack: todo ]
		ifFalse: [ todosPane addMorph: todo ].
	todosPane redrawNeeded.
! !

!TodoApp methodsFor: 'private' stamp: 'RMV 2/15/2025 15:46:16'!
addTodoFromEntry
	| text |
	
	text := todoEntry contents.
	text isEmpty ifFalse: [
		self addTodo: text atStart: true.
		todoEntry contents: ''.
		todoEntry keyboardFocusChange: true
	]! !

!TodoApp class methodsFor: 'instance creation' stamp: 'RMV 2/15/2025 14:23:22'!
open
	| extent instance |
	
	instance := self new.
	instance openInWorld.
			
	"Size the window to the minimum size that holds the contents.
	 This must be done AFTER sending #openInWorld!!"
	extent := instance minimumExtent.
	instance morphExtent: 300 @ extent y.! !

!ButtonMorf methodsFor: 'drawing' stamp: 'RMV 2/10/2025 11:07:54'!
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

!ButtonMorf methodsFor: 'initialization' stamp: 'RMV 2/10/2025 10:58:12'!
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

!ButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:16'!
handlesMouseDown: aMouseEvent
	
	^ true! !

!ButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:21'!
handlesMouseOver: aMouseEvent
	
	^ true! !

!ButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:26'!
label: aString
	
	label := aString! !

!ButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:31'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	
	onClick ifNotNil: [onClick value]! !

!ButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:35'!
mouseEnter: aMouseEvent
	
	hovered := true.
	self redrawNeeded ! !

!ButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:52:39'!
mouseLeave: aMouseEvent
	
	hovered := false.
	self redrawNeeded ! !

!ButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/10/2025 10:53:04'!
onClick: aBlock
	
	onClick := aBlock! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:52:08'!
fillColor
	
	^ fillColor! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:52:04'!
fillColor: aColor
	
	fillColor := aColor! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:59'!
font
	
	^ font! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:55'!
font: aFont
	
	font := aFont! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:51'!
hoverColor
	
	^ hoverColor! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:47'!
hoverColor: aColor
	
	hoverColor := aColor! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 11:04:44'!
morphExtent
	| height labelHeight labelWidth width |
	
	font ifNil: [ font := FontFamily defaultFamilyAndPointSize ].
	labelWidth := font widthOfString: label.
	labelHeight := font pointSize. "TODO: correct?"
	width := borderWidth + padding x * 2 + labelWidth.
	height := borderWidth + padding y * 2 + labelHeight.
	^ width @ height.
	
! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:35'!
requiresVectorCanvas
	
	^ true! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:27'!
textColor
	
	^ textColor! !

!ButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/10/2025 10:51:31'!
textColor: aColor
	
	textColor := aColor! !

!ButtonMorf class methodsFor: 'as yet unclassified' stamp: 'RMV 8/15/2024 19:10:20'!
label: aString onClick: aBlock
	^ self new label: aString; onClick:​ aBlock! !

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

!CheckboxMorf methodsFor: 'accessing' stamp: 'RMV 2/12/2025 16:13:59'!
checked
	
	^ checked! !

!CheckboxMorf methodsFor: 'accessing' stamp: 'RMV 2/12/2025 16:13:54'!
checked: aBoolean
	
	checked := aBoolean.
	self redrawNeeded.! !

!CheckboxMorf methodsFor: 'drawing' stamp: 'RMV 2/15/2025 14:52:22'!
drawOn: aCanvas
	| color halfHeight hoverColor rect |
		
	halfHeight := height / 2.
	hoverColor := borderColor muchDarker.
	color := hovered ifTrue: hoverColor ifFalse: borderColor.
	rect := Rectangle origin: 0 @ 0 extent: height @ height.
	aCanvas frameRectangle: rect borderWidth: 2 color: color.

	checked ifTrue: [
		| p1 p2 p3 width |

		p1 := (0.25 * height) @ (0.6 * height).
		p2 := (0.45 * height) @ (0.75 * height).
		p3 := (0.75 * height) @ (0.3 * height).
		width := height / 8.
		aCanvas line: p1 to: p2 width: width color: hoverColor.
		aCanvas line: p2 to: p3 width: width color: hoverColor.
	].

	label ifNotNil: [
		| labelX labelY |
		labelX := height + separation.
		labelY := halfHeight + (font pointSize / 2) - 1.
		aCanvas
			drawString: label
			from: 1
			to: label size
			atBaseline: labelX @ labelY
			font: font
			color: Color black.
	]! !

!CheckboxMorf methodsFor: 'event handling' stamp: 'RMV 2/12/2025 16:10:54'!
handlesMouseDown: aMouseEvent
	
	^ true! !

!CheckboxMorf methodsFor: 'event handling' stamp: 'RMV 2/12/2025 16:10:54'!
handlesMouseOver: aMouseEvent
	
	^ true! !

!CheckboxMorf methodsFor: 'event handling' stamp: 'RMV 2/12/2025 16:18:15'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	
	checked := checked not.
	self redrawNeeded.
	onChange ifNotNil: [ onChange value: checked ]! !

!CheckboxMorf methodsFor: 'event handling' stamp: 'RMV 2/12/2025 16:10:54'!
mouseEnter: aMouseEvent
	
	hovered := true.
	self redrawNeeded ! !

!CheckboxMorf methodsFor: 'event handling' stamp: 'RMV 2/12/2025 16:10:54'!
mouseLeave: aMouseEvent
	
	hovered := false.
	self redrawNeeded ! !

!CheckboxMorf methodsFor: 'event handling' stamp: 'RMV 2/12/2025 16:10:54'!
onChange: aBlock
	
	onChange := aBlock! !

!CheckboxMorf methodsFor: 'geometry' stamp: 'RMV 2/15/2025 14:50:33'!
morphExtent

	^ label
		ifNil: height @ height
		ifNotNil: [
			| labelWidth |
			
			labelWidth := font widthOfString: label.
			(height + separation + labelWidth + 10) @ height.
		]! !

!CheckboxMorf methodsFor: 'geometry testing' stamp: 'RMV 2/12/2025 16:10:54'!
requiresVectorCanvas
	
	^ true! !

!CheckboxMorf methodsFor: 'initialization' stamp: 'RMV 2/15/2025 14:44:54'!
initialize
	
	super initialize.
	
	borderColor := Color gray muchLighter.
	checked := false.
	fillColor := Color gray.
	font := FontFamily defaultFamilyAndPointSize.
	height := 20.
	hovered := false.
	label := ''.
	separation := 5. "between circle and label"
	
	self morphExtent: self morphExtent.! !

!CheckboxMorf methodsFor: 'private' stamp: 'RMV 2/15/2025 14:45:42'!
label: aString checked: aBoolean

	label := aString.
	checked := aBoolean.
	self morphExtent: self morphExtent.
! !

!CheckboxMorf class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 16:11:42'!
label: aString

	^ self label: aString checked: false.! !

!CheckboxMorf class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 16:11:24'!
label: aString checked: aBoolean	
	
	^ self new label: aString checked: aBoolean
! !

!RadioButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/11/2025 18:34:11'!
selected
	
	^ selected! !

!RadioButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/12/2025 13:31:45'!
selected: aBoolean
	
	selected := aBoolean.
	self redrawNeeded.! !

!RadioButtonMorf methodsFor: 'accessing' stamp: 'RMV 2/12/2025 13:36:31'!
value
	
	^ value! !

!RadioButtonMorf methodsFor: 'drawing' stamp: 'RMV 2/12/2025 16:15:59'!
drawOn: aCanvas
	| color halfHeight labelX labelY |
		
	halfHeight := height / 2.
	color := hovered ifTrue: [ borderColor muchDarker ] ifFalse: borderColor.
	aCanvas strokeWidth: 2 color: color do: [
		aCanvas circleCenter: halfHeight @ halfHeight radius: halfHeight
	].

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
		color: Color black.! !

!RadioButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
handlesMouseDown: aMouseEvent
	
	^ true! !

!RadioButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
handlesMouseOver: aMouseEvent
	
	^ true! !

!RadioButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/12/2025 16:14:43'!
mouseButton1Down: aMouseEvent localPosition: aPosition
	
	selected := selected not.
	self redrawNeeded.
	onChange ifNotNil: [ onChange value: value ]! !

!RadioButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
mouseEnter: aMouseEvent
	
	hovered := true.
	self redrawNeeded ! !

!RadioButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
mouseLeave: aMouseEvent
	
	hovered := false.
	self redrawNeeded ! !

!RadioButtonMorf methodsFor: 'event handling' stamp: 'RMV 2/11/2025 09:10:51'!
onChange: aBlock
	
	onChange := aBlock! !

!RadioButtonMorf methodsFor: 'geometry' stamp: 'RMV 2/12/2025 12:28:22'!
morphExtent
	| labelWidth |

	labelWidth := font widthOfString: label.	
	^ (height + separation + labelWidth) @ height.! !

!RadioButtonMorf methodsFor: 'geometry testing' stamp: 'RMV 2/11/2025 09:10:51'!
requiresVectorCanvas
	
	^ true! !

!RadioButtonMorf methodsFor: 'initialization' stamp: 'RMV 2/15/2025 14:43:58'!
initialize
	
	super initialize.
	
	borderColor := Color gray muchLighter.
	fillColor := Color gray.
	font := FontFamily defaultFamilyAndPointSize.
	height := 20.
	hovered := false.
	label := ''.
	selected := false.
	separation := 5. "between circle and label"
	
	"self morphExtent: 100 @ 30."! !

!RadioButtonMorf methodsFor: 'private' stamp: 'RMV 2/12/2025 12:39:19'!
label: aString value: anObject selected: aBoolean

	label := aString.
	value := anObject.
	selected := aBoolean.
! !

!RadioButtonMorf class methodsFor: 'as yet unclassified' stamp: 'RMV 2/11/2025 18:19:56'!
label: aString

	^ self label: aString selected: false.! !

!RadioButtonMorf class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 12:40:08'!
label: aString selected: aBoolean	
	
	^ self new label: aString value: aString selected: aBoolean
! !

!RadioButtonMorf class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 12:39:58'!
label: labelString value: anObject

	^ self label: labelString value: anObject selected: false.! !

!RadioButtonMorf class methodsFor: 'as yet unclassified' stamp: 'RMV 2/12/2025 12:39:46'!
label: aString value: anObject selected: aBoolean	
	
	^ self new label: aString value: anObject selected: aBoolean
! !
Todo initialize!
