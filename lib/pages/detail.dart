import 'package:flutter/material.dart';
import 'package:studyjam_app/models/destination.dart';

class DetailPage extends StatefulWidget {
  final DestinationModel destinationModel;
  const DetailPage({required this.destinationModel, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Detail Destination'),
        leadingWidth: 100,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black, size: 24)),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(widget.destinationModel.imgPath),
            Text(widget.destinationModel.title),
            Text(widget.destinationModel.location),
            Text(widget.destinationModel.price),
          ],
        ),
      ),
    );
  }
}
