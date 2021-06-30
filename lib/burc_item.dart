import 'package:exampleproject/burc_detay.dart';
import 'package:exampleproject/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;

  const BurcItem({required this.listelenenBurc ,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (Context)=>BurcDetay(secilenburc: listelenenBurc,)
                    ,),
              );
            },
            leading: Image.asset("images/"  + listelenenBurc.burKucukResim,),
            title: Text(listelenenBurc.burcAdi,style: myTextStyle.headline5,),
           subtitle: Text(listelenenBurc.burcTarihi,style: myTextStyle.subtitle1,),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
