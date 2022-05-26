part of regiment_codex;

class RegimentCodexOverview extends StatelessWidget {
  const RegimentCodexOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 1400,
        child: ListView(
          children: const [
            SizedBox(height: 50),
            PhantomPreviewHeader(),
            SizedBox(height: 50),
            CustomBox(
              constraints: BoxConstraints(
                maxHeight: 100,
                maxWidth: double.infinity,
              ),
            ),
            PhantomPreviewFilerSection(),
            SizedBox(height: 800, child: PhantomsPreviewGrid()),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
