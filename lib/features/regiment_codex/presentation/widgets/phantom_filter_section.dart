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
          const Expanded(child: CustomBox(height: 5)),
          CustomBox(
            width: 150,
            height: 25,
            borderRadius: BorderRadius.circular(6.0),
            margin: const EdgeInsets.only(left: 20),
          ),
        ],
      ),
    );
  }
}
