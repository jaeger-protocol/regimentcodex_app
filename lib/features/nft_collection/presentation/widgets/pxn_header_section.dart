part of nft_collection;

class PXNPreviewHeader extends StatelessWidget {
  const PXNPreviewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Placeholder(fallbackHeight: 170, fallbackWidth: 100),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 80),
          child: Text(
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.',
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
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
              const Expanded(flex: 3, child: Placeholder(fallbackWidth: 500)),
              const SizedBox(width: 20),
              const PhantomPreviewHeaderRight(),
            ],
          ),
        ),
      ],
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'REI',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 20),
              const CustomBox(
                width: double.infinity,
                padding: EdgeInsets.all(25),
                child: Text(
                  'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum. If you are going to use a passage of Lorem Ipsum. If you are going to use a passage of Lorem Ipsum. If you are going to use a passage of Lorem Ipsum.\n\n If you are going to use a passage of Lorem Ipsum. If you are going to use a passage of Lorem Ipsum. If you are going to use a passage of Lorem Ipsum. If you are going to use a passage of Lorem Ipsum.',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
