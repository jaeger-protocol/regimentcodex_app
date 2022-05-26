part of regiment_codex;

class PhantomPreviewHeader extends StatelessWidget {
  const PhantomPreviewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: const [
                Expanded(
                  child: Placeholder(
                    fallbackHeight: 200,
                    fallbackWidth: 150,
                  ),
                ),
                SizedBox(height: 20),
                Placeholder(fallbackHeight: 150, fallbackWidth: 150),
              ],
            ),
          ),
          const SizedBox(width: 20),
          const Expanded(flex: 3,child: Placeholder(fallbackWidth: 500)),
          const SizedBox(width: 20),
          const PhantomPreviewHeaderRight(),
        ],
      ),
    );
  }
}

class PhantomPreviewHeaderRight extends StatelessWidget {
  const PhantomPreviewHeaderRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 425,
          maxHeight: 410,
        ),
        child: SizedBox(
          height: 400,
          child: Column(
            children: [
              const CustomBox(
                height: 100,
                padding: EdgeInsets.all(18),
                child: Placeholder(),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Row(
                  children: const [
                    Expanded(
                      child: CustomBox(
                        width: 206,
                        padding: EdgeInsets.all(25),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: CustomBox(
                        width: 206,
                        padding: EdgeInsets.all(25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
