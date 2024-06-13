## Container
### Propriedade
- alignment: alinha a child com o container;
- child : cria um filho;
- clipBehavior: determina se o elemento deve e limitar ao pai;
- color : altera a cor do widget;
- constraints : regras de tamanho e posicionamneto aplicado ao child;
- decoration : define cor de fundo, borda, sombra, etc;
- foregroundDecoration : define as camdas (sobreposição de elementos);
- hashcode : id impreciso do widget;
- key : id do widget;
- margin: margens externas do widget;
- padding: amrgens internas do widget;
- runtimeType : fornece o tipo de objeto em execução;
- transform : manipula a aparência do child (posição, rotação, etc)
- transformAlignment : ponto de referência relativo da trasnformação (ex: rotação a partir do centro)

### Construtores
Container( { [Key](https://api.flutter.dev/flutter/foundation/Key-class.html) ? key , [AlignmentGeometry](https://api.flutter.dev/flutter/painting/AlignmentGeometry-class.html) ? alinhamento , [EdgeInsetsGeometry](https://api.flutter.dev/flutter/painting/EdgeInsetsGeometry-class.html) ? preenchimento , [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html) ? color , [Decoration](https://api.flutter.dev/flutter/painting/Decoration-class.html) ? Decoration , [Decoration](https://api.flutter.dev/flutter/painting/Decoration-class.html) ? foregroundDecoration , [double](https://api.flutter.dev/flutter/dart-core/double-class.html) ? width , [double](https://api.flutter.dev/flutter/dart-core/double-class.html) ? height , [BoxConstraints](https://api.flutter.dev/flutter/rendering/BoxConstraints-class.html) ? restrições , [EdgeInsetsGeometry](https://api.flutter.dev/flutter/painting/EdgeInsetsGeometry-class.html) ? margin , [Matrix4](https://api.flutter.dev/flutter/vector_math_64/Matrix4-class.html) ? transform , [AlignmentGeometry](https://api.flutter.dev/flutter/painting/AlignmentGeometry-class.html) ? transformAlignment , [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html) ? filho , [Clip](https://api.flutter.dev/flutter/dart-ui/Clip.html) clipBehavior = Clip.none } )

### Métodos
- build (context buildcontext): descreve (localiza) o widget;
- createElement (): cria um widget;

## Text
### Propriedades
- data : define o texto a ser exibido;
- hashcode : id impreciso do widget;
- key : id do widget;
- locale : define a fonte;
- maxLines : define a quantidade máxima de linhas;
- overflow : quando deve quebar linha;
- runtimeType : fornece o tipo de objeto em execução;
- selectionColor : cor da seleção;
- semanticsLabel : descrição do widget (acessibilidade);
- softWrap : quebra de linha por palavra;
- strutStyle : define a altura mínima do texto;
- style: define fontSize, color, letterSpacing, etc;
- textAlign: alinhamento horizontal do texto;
- textDirection: direção da escrita (ocidente ou oriente);
- textHeightBehavior: define como as métricas das fontes são utilizadas para calcular a altura;
- textScaler : define o tamanho da escala;
- TextSpan: define formatação específica para uma parte do Text;
- TextWidthBasis : define como a largura de um Text é calculada;

### Construtores
Text([String](https://api.flutter.dev/flutter/dart-core/String-class.html) data, {[Key](https://api.flutter.dev/flutter/foundation/Key-class.html)? key, [TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html)? style, [StrutStyle](https://api.flutter.dev/flutter/painting/StrutStyle-class.html)? strutStyle, [TextAlign](https://api.flutter.dev/flutter/dart-ui/TextAlign.html)? textAlign, [TextDirection](https://api.flutter.dev/flutter/dart-ui/TextDirection.html)? textDirection, [Locale](https://api.flutter.dev/flutter/dart-ui/Locale-class.html)? locale, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html)? softWrap, [TextOverflow](https://api.flutter.dev/flutter/painting/TextOverflow.html)? overflow, @[Deprecated](https://api.flutter.dev/flutter/dart-core/Deprecated-class.html)('Use textScaler instead. ' 'Use of textScaleFactor was deprecated in preparation for the upcoming nonlinear text scaling support. ' 'This feature was deprecated after v3.12.0-2.0.pre.') [double](https://api.flutter.dev/flutter/dart-core/double-class.html)? textScaleFactor, [TextScaler](https://api.flutter.dev/flutter/painting/TextScaler-class.html)? textScaler, [int](https://api.flutter.dev/flutter/dart-core/int-class.html)? maxLines, [String](https://api.flutter.dev/flutter/dart-core/String-class.html)? semanticsLabel, [TextWidthBasis](https://api.flutter.dev/flutter/painting/TextWidthBasis.html)? textWidthBasis, [TextHeightBehavior](https://api.flutter.dev/flutter/dart-ui/TextHeightBehavior-class.html)? textHeightBehavior, [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html)? selectionColor})

Text.rich([InlineSpan](https://api.flutter.dev/flutter/painting/InlineSpan-class.html) textSpan, {[Key](https://api.flutter.dev/flutter/foundation/Key-class.html)? key, [TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html)? style, [StrutStyle](https://api.flutter.dev/flutter/painting/StrutStyle-class.html)? strutStyle, [TextAlign](https://api.flutter.dev/flutter/dart-ui/TextAlign.html)? textAlign, [TextDirection](https://api.flutter.dev/flutter/dart-ui/TextDirection.html)? textDirection, [Locale](https://api.flutter.dev/flutter/dart-ui/Locale-class.html)? locale, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html)? softWrap, [TextOverflow](https://api.flutter.dev/flutter/painting/TextOverflow.html)? overflow, @[Deprecated](https://api.flutter.dev/flutter/dart-core/Deprecated-class.html)('Use textScaler instead. ' 'Use of textScaleFactor was deprecated in preparation for the upcoming nonlinear text scaling support. ' 'This feature was deprecated after v3.12.0-2.0.pre.') [double](https://api.flutter.dev/flutter/dart-core/double-class.html)? textScaleFactor, [TextScaler](https://api.flutter.dev/flutter/painting/TextScaler-class.html)? textScaler, [int](https://api.flutter.dev/flutter/dart-core/int-class.html)? maxLines, [String](https://api.flutter.dev/flutter/dart-core/String-class.html)? semanticsLabel, [TextWidthBasis](https://api.flutter.dev/flutter/painting/TextWidthBasis.html)? textWidthBasis, [TextHeightBehavior](https://api.flutter.dev/flutter/dart-ui/TextHeightBehavior-class.html)? textHeightBehavior, [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html)? selectionColor})

### Métodos
- build (context buildcontext): descreve (localiza) o widget;
- createElement (): cria um widget;

## Image
### Propriedades
- alignment : define o alinhamento da imagem;
- centerSlice : divide a imagem em 9 pedaços (pode ser utilizada para preencher espaços);
- color : define a cor da imagem;
- colorBlendMode : controla como a cor dowidget é combinada com outras cores;
- errorBuilder : define o que fazer em caso de erro ao carregar a imagem;
- excludeFromSemnatics : define a exclusão da semnatica (Acessibilidade).
- filterQuality : define o filtro de qualidade de redenrização;
- fit : define como alocar a imagem no espaço;
- frameBuilder : responsável por criar o widget que representa a imagem;
- gaplessPlayback : transição suave entre as imagens (ex: capa da música);
- hashcode : id impreciso do widget;
- key : id do widget;
- height: define a altura da imagem;
- image : define a imagem a ser mostrada;
- isAntAlias : suaviza bordas;
- loadignBuilder : define o que fazer enquanto a imagem está carregando;
- matchTextDirection : define a direção da imagem (ocidental ou oriental);
- opacity: define a opacidade do widget;
- repeat: 
- runtimeType : fornece o tipo de objeto em execução;
- semanticsLabel : descrição do widget (acessibilidade);
- wudth: define a largura do widget;

### Construtores
Image({[Key](https://api.flutter.dev/flutter/foundation/Key-class.html)? key, required [ImageProvider](https://api.flutter.dev/flutter/painting/ImageProvider-class.html)<[Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)> image, [ImageFrameBuilder](https://api.flutter.dev/flutter/widgets/ImageFrameBuilder.html)? frameBuilder, [ImageLoadingBuilder](https://api.flutter.dev/flutter/widgets/ImageLoadingBuilder.html)? loadingBuilder, [ImageErrorWidgetBuilder](https://api.flutter.dev/flutter/widgets/ImageErrorWidgetBuilder.html)? errorBuilder, [String](https://api.flutter.dev/flutter/dart-core/String-class.html)? semanticLabel, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) excludeFromSemantics = false, [double](https://api.flutter.dev/flutter/dart-core/double-class.html)? width, [double](https://api.flutter.dev/flutter/dart-core/double-class.html)? height, [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html)? color, [Animation](https://api.flutter.dev/flutter/animation/Animation-class.html)<[double](https://api.flutter.dev/flutter/dart-core/double-class.html)>? opacity, [BlendMode](https://api.flutter.dev/flutter/dart-ui/BlendMode.html)? colorBlendMode, [BoxFit](https://api.flutter.dev/flutter/painting/BoxFit.html)? fit, [AlignmentGeometry](https://api.flutter.dev/flutter/painting/AlignmentGeometry-class.html) alignment = Alignment.center, [ImageRepeat](https://api.flutter.dev/flutter/painting/ImageRepeat.html) repeat = ImageRepeat.noRepeat, [Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.html)? centerSlice, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) matchTextDirection = false, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) gaplessPlayback = false, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) isAntiAlias = false, [FilterQuality](https://api.flutter.dev/flutter/dart-ui/FilterQuality.html) filterQuality = FilterQuality.low})

### Métodos
- createElement (): cria um widget;

## ElevatedButton
### Propriedades
- autofocus : define o foco automático;
- child : cria um filho;
- clipBehavior: determina se o elemento deve e limitar ao pai;
- enabled : define se o botão está ativo ou desativado.
- focusNode: define o foco de forma programada;
- hashcode : id impreciso do widget;
- key : id do widget;
- isSemanticButton : determina a semântica do botão;
- onFocusChange : define ação através mudança de foco;
- onLongPress : ações depois de pressionar por longo tempo;
- onPressed : ação por clicar no botão;
- runtimeType : fornece o tipo de objeto em execução;
- statesController : define o controle do stado do widget;
- style: define estilo do botão;


### Construtores
ElevatedButton({[Key](https://api.flutter.dev/flutter/foundation/Key-class.html)? key, required [VoidCallback](https://api.flutter.dev/flutter/dart-ui/VoidCallback.html)? onPressed, [VoidCallback](https://api.flutter.dev/flutter/dart-ui/VoidCallback.html)? onLongPress, [ValueChanged](https://api.flutter.dev/flutter/foundation/ValueChanged.html)<[bool](https://api.flutter.dev/flutter/dart-core/bool-class.html)>? onHover, [ValueChanged](https://api.flutter.dev/flutter/foundation/ValueChanged.html)<[bool](https://api.flutter.dev/flutter/dart-core/bool-class.html)>? onFocusChange, [ButtonStyle](https://api.flutter.dev/flutter/material/ButtonStyle-class.html)? style, [FocusNode](https://api.flutter.dev/flutter/widgets/FocusNode-class.html)? focusNode, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) autofocus = false, [Clip](https://api.flutter.dev/flutter/dart-ui/Clip.html) clipBehavior = Clip.none, [MaterialStatesController](https://api.flutter.dev/flutter/material/MaterialStatesController-class.html)? statesController, required [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html)? child})

ElevatedButton.icon({[Key](https://api.flutter.dev/flutter/foundation/Key-class.html)? key, required [VoidCallback](https://api.flutter.dev/flutter/dart-ui/VoidCallback.html)? onPressed, [VoidCallback](https://api.flutter.dev/flutter/dart-ui/VoidCallback.html)? onLongPress, [ValueChanged](https://api.flutter.dev/flutter/foundation/ValueChanged.html)<[bool](https://api.flutter.dev/flutter/dart-core/bool-class.html)>? onHover, [ValueChanged](https://api.flutter.dev/flutter/foundation/ValueChanged.html)<[bool](https://api.flutter.dev/flutter/dart-core/bool-class.html)>? onFocusChange, [ButtonStyle](https://api.flutter.dev/flutter/material/ButtonStyle-class.html)? style, [FocusNode](https://api.flutter.dev/flutter/widgets/FocusNode-class.html)? focusNode, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html)? autofocus, [Clip](https://api.flutter.dev/flutter/dart-ui/Clip.html)? clipBehavior, [MaterialStatesController](https://api.flutter.dev/flutter/material/MaterialStatesController-class.html)? statesController, required [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html) icon, required [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html) label})

### Métodos
- createElement (): cria um widget;
- createState () : cria um estado mutável para o botão

## DetectorGesture
### Propriedades
- behavior: controla o comportamento do widget;
- child: cria um filho;
- dragStartBehavior : define uma ação incial em resposta a um gesto de toque;
- onDoubleTap: responde a um toque duplo do usuário;
- onForcePressEnd : responde a um gesto de pressão do usuário;

#### Construtores
GestureDetector({[Key](https://api.flutter.dev/flutter/foundation/Key-class.html)? key, [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html)? child, [GestureTapDownCallback](https://api.flutter.dev/flutter/gestures/GestureTapDownCallback.html)? onTapDown, [GestureTapUpCallback](https://api.flutter.dev/flutter/gestures/GestureTapUpCallback.html)? onTapUp, [GestureTapCallback](https://api.flutter.dev/flutter/gestures/GestureTapCallback.html)? onTap, [GestureTapCancelCallback](https://api.flutter.dev/flutter/gestures/GestureTapCancelCallback.html)? onTapCancel, [GestureTapCallback](https://api.flutter.dev/flutter/gestures/GestureTapCallback.html)? onSecondaryTap, [GestureTapDownCallback](https://api.flutter.dev/flutter/gestures/GestureTapDownCallback.html)? onSecondaryTapDown, [GestureTapUpCallback](https://api.flutter.dev/flutter/gestures/GestureTapUpCallback.html)? onSecondaryTapUp, [GestureTapCancelCallback](https://api.flutter.dev/flutter/gestures/GestureTapCancelCallback.html)? onSecondaryTapCancel, [GestureTapDownCallback](https://api.flutter.dev/flutter/gestures/GestureTapDownCallback.html)? onTertiaryTapDown, [GestureTapUpCallback](https://api.flutter.dev/flutter/gestures/GestureTapUpCallback.html)? onTertiaryTapUp, [GestureTapCancelCallback](https://api.flutter.dev/flutter/gestures/GestureTapCancelCallback.html)? onTertiaryTapCancel, [GestureTapDownCallback](https://api.flutter.dev/flutter/gestures/GestureTapDownCallback.html)? onDoubleTapDown, [GestureTapCallback](https://api.flutter.dev/flutter/gestures/GestureTapCallback.html)? onDoubleTap, [GestureTapCancelCallback](https://api.flutter.dev/flutter/gestures/GestureTapCancelCallback.html)? onDoubleTapCancel, [GestureLongPressDownCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressDownCallback.html)? onLongPressDown, [GestureLongPressCancelCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressCancelCallback.html)? onLongPressCancel, [GestureLongPressCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressCallback.html)? onLongPress, [GestureLongPressStartCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressStartCallback.html)? onLongPressStart, [GestureLongPressMoveUpdateCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressMoveUpdateCallback.html)? onLongPressMoveUpdate, [GestureLongPressUpCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressUpCallback.html)? onLongPressUp, [GestureLongPressEndCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressEndCallback.html)? onLongPressEnd, [GestureLongPressDownCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressDownCallback.html)? onSecondaryLongPressDown, [GestureLongPressCancelCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressCancelCallback.html)? onSecondaryLongPressCancel, [GestureLongPressCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressCallback.html)? onSecondaryLongPress, [GestureLongPressStartCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressStartCallback.html)? onSecondaryLongPressStart, [GestureLongPressMoveUpdateCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressMoveUpdateCallback.html)? onSecondaryLongPressMoveUpdate, [GestureLongPressUpCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressUpCallback.html)? onSecondaryLongPressUp, [GestureLongPressEndCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressEndCallback.html)? onSecondaryLongPressEnd, [GestureLongPressDownCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressDownCallback.html)? onTertiaryLongPressDown, [GestureLongPressCancelCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressCancelCallback.html)? onTertiaryLongPressCancel, [GestureLongPressCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressCallback.html)? onTertiaryLongPress, [GestureLongPressStartCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressStartCallback.html)? onTertiaryLongPressStart, [GestureLongPressMoveUpdateCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressMoveUpdateCallback.html)? onTertiaryLongPressMoveUpdate, [GestureLongPressUpCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressUpCallback.html)? onTertiaryLongPressUp, [GestureLongPressEndCallback](https://api.flutter.dev/flutter/gestures/GestureLongPressEndCallback.html)? onTertiaryLongPressEnd, [GestureDragDownCallback](https://api.flutter.dev/flutter/gestures/GestureDragDownCallback.html)? onVerticalDragDown, [GestureDragStartCallback](https://api.flutter.dev/flutter/gestures/GestureDragStartCallback.html)? onVerticalDragStart, [GestureDragUpdateCallback](https://api.flutter.dev/flutter/gestures/GestureDragUpdateCallback.html)? onVerticalDragUpdate, [GestureDragEndCallback](https://api.flutter.dev/flutter/gestures/GestureDragEndCallback.html)? onVerticalDragEnd, [GestureDragCancelCallback](https://api.flutter.dev/flutter/gestures/GestureDragCancelCallback.html)? onVerticalDragCancel, [GestureDragDownCallback](https://api.flutter.dev/flutter/gestures/GestureDragDownCallback.html)? onHorizontalDragDown, [GestureDragStartCallback](https://api.flutter.dev/flutter/gestures/GestureDragStartCallback.html)? onHorizontalDragStart, [GestureDragUpdateCallback](https://api.flutter.dev/flutter/gestures/GestureDragUpdateCallback.html)? onHorizontalDragUpdate, [GestureDragEndCallback](https://api.flutter.dev/flutter/gestures/GestureDragEndCallback.html)? onHorizontalDragEnd, [GestureDragCancelCallback](https://api.flutter.dev/flutter/gestures/GestureDragCancelCallback.html)? onHorizontalDragCancel, [GestureForcePressStartCallback](https://api.flutter.dev/flutter/gestures/GestureForcePressStartCallback.html)? onForcePressStart, [GestureForcePressPeakCallback](https://api.flutter.dev/flutter/gestures/GestureForcePressPeakCallback.html)? onForcePressPeak, [GestureForcePressUpdateCallback](https://api.flutter.dev/flutter/gestures/GestureForcePressUpdateCallback.html)? onForcePressUpdate, [GestureForcePressEndCallback](https://api.flutter.dev/flutter/gestures/GestureForcePressEndCallback.html)? onForcePressEnd, [GestureDragDownCallback](https://api.flutter.dev/flutter/gestures/GestureDragDownCallback.html)? onPanDown, [GestureDragStartCallback](https://api.flutter.dev/flutter/gestures/GestureDragStartCallback.html)? onPanStart, [GestureDragUpdateCallback](https://api.flutter.dev/flutter/gestures/GestureDragUpdateCallback.html)? onPanUpdate, [GestureDragEndCallback](https://api.flutter.dev/flutter/gestures/GestureDragEndCallback.html)? onPanEnd, [GestureDragCancelCallback](https://api.flutter.dev/flutter/gestures/GestureDragCancelCallback.html)? onPanCancel, [GestureScaleStartCallback](https://api.flutter.dev/flutter/gestures/GestureScaleStartCallback.html)? onScaleStart, [GestureScaleUpdateCallback](https://api.flutter.dev/flutter/gestures/GestureScaleUpdateCallback.html)? onScaleUpdate, [GestureScaleEndCallback](https://api.flutter.dev/flutter/gestures/GestureScaleEndCallback.html)? onScaleEnd, [HitTestBehavior](https://api.flutter.dev/flutter/rendering/HitTestBehavior.html)? behavior, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) excludeFromSemantics = false, [DragStartBehavior](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html) dragStartBehavior = DragStartBehavior.start, [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) trackpadScrollCausesScale = false, [Offset](https://api.flutter.dev/flutter/dart-ui/Offset-class.html) trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor, [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html)<[PointerDeviceKind](https://api.flutter.dev/flutter/dart-ui/PointerDeviceKind.html)>? supportedDevices})

#### Métodos
- build (context buildcontext): descreve (localiza) o widget;
- createElement (): cria um widget;

### LinearProgressIndicator
#### Propriedades
- backgroundColor: define a cor de fundo;
- borderRadius: define a suavidade das bordas;
- color : define a cor da barra de progresso;
- hashcode : id impreciso do widget;
- key : id do widget;
- minHeight: define a altura minima da barra de progresso;
- value : define o valor da barra de progresso;
- valueColor : define a cor do valor da barra de progresso;

#### Construtores
LinearProgressIndicator({[Key](https://api.flutter.dev/flutter/foundation/Key-class.html)? key, [double](https://api.flutter.dev/flutter/dart-core/double-class.html)? value, [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html)? backgroundColor, [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html)? color, [Animation](https://api.flutter.dev/flutter/animation/Animation-class.html)<[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html)?>? valueColor, [double](https://api.flutter.dev/flutter/dart-core/double-class.html)? minHeight, [String](https://api.flutter.dev/flutter/dart-core/String-class.html)? semanticsLabel, [String](https://api.flutter.dev/flutter/dart-core/String-class.html)? semanticsValue, [BorderRadiusGeometry](https://api.flutter.dev/flutter/painting/BorderRadiusGeometry-class.html) borderRadius = BorderRadius.zero})

#### Métodos
- createElement (): cria um widget;
- createState () : cria um estado mutável para o widget