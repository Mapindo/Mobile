import 'package:flutter/material.dart';
import 'select_photo_view_model.dart';

class SelectPhotoView extends SelectPhotoViewModel {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 1,
              child: h1text(),
            ),
            Expanded(
              flex: 2,
              child: textColumn(),
            ),
            Expanded(
              flex: 5,
              child: photoColumn(),
            ),
            Spacer(flex: 1),
            Expanded(
              flex: 1,
              child: butonFinish(),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  Text h1text() {
    return Text("Profil fotoğrafını seç",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
  }

  Column textColumn() {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Text("Profilini tamamlamak için son adım!",
              style: TextStyle(fontSize: 16)),
        ),
        Expanded(
          flex: 1,
          child: Text("Hemen profil fotoğrafını yükleyerek etkinlikleri",
              style: TextStyle(fontSize: 16)),
        ),
        Expanded(
          flex: 3,
          child: Text(" keşfetmeye başlayabilirsin",
              style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }

  Column photoColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.indigo.shade300,
                  size: 50,
                ),
                iconSize: 50,
                onPressed: () {})),
        Expanded(
          flex: 4,
          child: Image.asset("assets/images/avatar.jpg"),
        ),
        Expanded(
          flex: 2,
          child: IconButton(
            icon: Icon(
              Icons.arrow_drop_up,
              color: Colors.indigo.shade300,
            ),
            iconSize: 50,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  RaisedButton butonFinish() {
    return RaisedButton(
      onPressed: () {},
      child: Text(
        "Kaydı Tamamla",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.black,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
    );
  }
}
