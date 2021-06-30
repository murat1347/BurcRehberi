import 'package:exampleproject/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenburc;
  const BurcDetay({required Burc this.secilenburc, Key? key,}) : super(key: key);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

  Color AppbarRengi = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    appBarRenginiBul();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          expandedHeight: 250,
          pinned: true,
          backgroundColor: AppbarRengi,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.secilenburc.burcAdi + " burcu ve özellikleri",),
            background: Image.asset('images/'+ widget.secilenburc.buyukResim,fit: BoxFit.cover,),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(child: Text(widget.secilenburc.burcDetayi,style: Theme.of(context).textTheme.subtitle1),))

        )
      ],
    )
    );

  }

  void appBarRenginiBul() async{
    _generator = await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenburc.buyukResim}'))
    AppbarRengi = _generator.dominantColor!.color;
    setState(() {
      
    });
  }
}
