import "package:flutter/material.dart";
import "package:flutter_provider/view_model/conList_viewmodel.dart";
import "package:provider/provider.dart";

class HomeScrean extends StatefulWidget {
  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  var _viewmodel = ConListViewNodel();

  @override
  void initState() {
    super.initState();

    _viewmodel.LoadData();
    
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewmodel,
      child: Consumer<ConListViewNodel>(
        builder: (context, viewmodel, child) {
          return GetBody(viewmodel);
        },
      ),
    );
  }

  Widget GetBody(ConListViewNodel videmodel) {
    return Scaffold(
      body: ListView.builder(
          itemCount: videmodel.crypoList.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return Text(
              videmodel.crypoList[index].name,
            );
          }),
    );
  }
}
