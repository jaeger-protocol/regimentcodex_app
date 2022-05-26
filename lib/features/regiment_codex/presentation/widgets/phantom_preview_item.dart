part of regiment_codex;

class PhantomsPreviewGrid extends StatelessWidget {
  const PhantomsPreviewGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 320,
        childAspectRatio: 240 / 290,
      ),
      itemBuilder: (context, index) {
        return const PhantomPreviewItem(phantom: null);
      },
    );
  }
}

class PhantomPreviewItem extends StatelessWidget {
  const PhantomPreviewItem({required this.phantom, super.key});

  final PhantomPreviewModel? phantom;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 290,
        maxWidth: 240,
      ),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(child: InfoText('#ID')),
                    InfoText('#ETH')
                  ],
                )
              ],
            ),
          ),
          const Positioned(
            right: 0.0,
            child: PhantomPreviewSigil(),
          ),
        ],
      ),
    );
  }
}

class PhantomPreviewSigil extends StatelessWidget {
  const PhantomPreviewSigil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBox(
      height: 40,
      width: 40,
      border: Border.all(
        color: const Color.fromRGBO(255, 255, 255, 1.0),
      ),
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  const InfoText(this.data, {Key? key}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headline5,
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
    this.borderRadius,
    this.constraints,
    this.padding,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Widget? child;
  final BoxBorder? border;
  final BoxConstraints? constraints;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      constraints: constraints,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: border,
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
