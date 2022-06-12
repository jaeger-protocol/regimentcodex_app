part of regiment_codex;

class PhantomPreviewFilerSection extends StatelessWidget {
  const PhantomPreviewFilerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: CustomBox(
              height: 4,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const PhantomSearchBox(),
        ],
      ),
    );
  }
}

class PhantomSearchBox extends StatelessWidget {
  const PhantomSearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBox(
      width: 155,
      height: 35,
      borderRadius: BorderRadius.circular(6.0),
      margin: const EdgeInsets.only(left: 20),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.only(top: 10),
            border: InputBorder.none,
            iconColor: Theme.of(context).colorScheme.onSurface,
            prefixIcon: const Icon(Icons.search),
            hintText: 'phantom name',
            hintStyle: Theme.of(context).textTheme.caption,
          ),
          onChanged: (String? query) {
            if (query == null) return;
            context.read<RegimentCodexProvider>().searchPhantom(query);
          },
        ),
      ),
    );
  }
}
