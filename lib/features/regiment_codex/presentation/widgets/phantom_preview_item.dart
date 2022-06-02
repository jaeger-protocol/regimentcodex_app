part of regiment_codex;

class PhantomsPreviewGrid extends StatelessWidget {
  const PhantomsPreviewGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegimentCodexProvider>(
      builder: (context, RegimentCodexProvider provider, _) {
        return GridView.builder(
          itemCount: provider.phantoms.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 320,
            childAspectRatio: 240 / 290,
          ),
          itemBuilder: (context, index) {
            final phantom = provider.phantoms[index];
            return PhantomPreviewItem(
              key: Key('Phantom <${phantom.id}> - <${phantom.name}>'),
              phantom: phantom,
            );
          },
        );
      },
    );
  }
}

class PhantomPreviewItem extends StatelessWidget {
  const PhantomPreviewItem({required this.phantom, super.key});

  final PhantomProfileModel phantom;

  static Color? elementColor;

  void updateElementColor(BuildContext context, bool isHovering) {
    switch (isHovering) {
      case true:
        elementColor = Theme.of(context).colorScheme.surface;
        break;
      case false:
        elementColor = Theme.of(context).colorScheme.onSurface;
        break;
    }
    elementColor ??= Theme.of(context).colorScheme.onSurface;
  }

  void openPhantomProfile() {}

  @override
  Widget build(BuildContext context) {
    return PreviewItemBody(
      onPressedOrClick: openPhantomProfile,
      builder: (bool isHovering) {
        updateElementColor(context, isHovering);
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Expanded(
                    child: Placeholder(
                      fallbackHeight: 204,
                      fallbackWidth: 203,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Placeholder(fallbackWidth: 40, fallbackHeight: 40),
                      CustomBox(
                        height: 30,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        width: 4,
                        color: elementColor,
                      ),
                      Expanded(
                        child: InfoText(
                          '${phantom.name}',
                          color: elementColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            PhantomPreviewSigil(phantom.id),
          ],
        );
      },
    );
  }
}

class PreviewItemBody extends StatefulWidget {
  const PreviewItemBody({
    required this.builder,
    this.onPressedOrClick,
    Key? key,
  }) : super(key: key);

  final Widget Function(bool isHovered) builder;
  final void Function()? onPressedOrClick;

  @override
  State<PreviewItemBody> createState() => _PreviewItemBodyState();
}

class _PreviewItemBodyState extends State<PreviewItemBody> {
  Color? backgroundColor;
  bool isHovering = false;

  void onHover(PointerHoverEvent hoverEvent) {
    isHovering = true;
    setState(() => backgroundColor = Theme.of(context).colorScheme.onSurface);
  }

  void onExit(PointerExitEvent hoverEvent) {
    isHovering = false;
    setState(() => backgroundColor = Theme.of(context).colorScheme.surface);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressedOrClick,
      child: MouseRegion(
        onHover: onHover,
        onExit: onExit,
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 290,
            maxWidth: 240,
          ),
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: backgroundColor ?? Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.builder(isHovering),
        ),
      ),
    );
  }
}

class PhantomPreviewSigil extends StatelessWidget {
  const PhantomPreviewSigil(
    this.id, {
    Key? key,
  }) : super(key: key);

  final int? id;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0.0,
      child: CustomBox(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(4),
        border: Border.all(
          color: const Color.fromRGBO(255, 255, 255, 1.0),
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        child: FittedBox(
          child: Center(
            child: Text('${id ?? '-'}', maxLines: 1),
          ),
        ),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  const InfoText(
    this.data, {
    this.color,
    Key? key,
  }) : super(key: key);

  final String data;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            color: color,
          ),
    );
  }
}

class CustomBox extends StatelessWidget {
  const CustomBox({
    Key? key,
    this.child,
    this.height,
    this.width,
    this.margin,
    this.border,
    this.color,
    this.alignment,
    this.borderRadius,
    this.constraints,
    this.padding,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Widget? child;
  final Color? color;
  final BoxBorder? border;
  final AlignmentGeometry? alignment;
  final BoxConstraints? constraints;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment,
      padding: padding,
      margin: margin,
      constraints: constraints,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.surface,
        border: border,
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
