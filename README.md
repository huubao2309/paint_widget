# Paint Widget

![Paint Widget](https://github.com/huubao2309/paint_widget/blob/master/images/paint_event.gif)

### Use PaintEvent:

```dart
 PaintEvent(
    child: Container(
        ...
    ),
    paintAfter: (context, offset, size) {
     final Paint paint = Paint();
     // ...
     context.canvas.drawRect(offset & size, paint);
    },
    paintBefore: (context, offset, size) {
       final Paint paint = Paint();
       // ...
       context.canvas.drawRect(offset & size, paint);
     },
 )
```



