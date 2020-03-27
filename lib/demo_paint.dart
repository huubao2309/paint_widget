part of lib_use;

class PaintEventDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PaintEventDemoState();
  }
}

class PaintEventDemoState extends State<PaintEventDemo> {
  bool isPaintBackgroud = false;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Paint Event Demo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  setState(() {
                    isPaintBackgroud = !isPaintBackgroud;
                  });
                },
                child: Text(
                  isPaintBackgroud
                      ? "Fill color before rendering"
                      : "Fill color after rendering",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                )),
            PaintEvent(
              child: Text(
                "Child widget text",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              paintAfter: (context, offset, size) {
                if (!isPaintBackgroud) {
                  final Paint paint = Paint();
                  paint.color = Colors.red;
                  context.canvas.drawRect(offset & size, paint);
                }
              },
              paintBefore: (context, offset, size) {
                if (isPaintBackgroud) {
                  final Paint paint = Paint();
                  paint.color = Colors.blue;
                  offset = offset + Offset(5, -5);
                  size = Size(widthScreen, 50);
                  context.canvas.drawRect(offset & size, paint);
                }
              },
            )
          ],
        ));
  }
}
