import 'package:flutter/material.dart';
import 'package:flutter_sentence_creator/view_models/sentence_creator_view_model.dart';
import 'package:provider/provider.dart';

class SentenceCreatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var viewModel =
        Provider.of<SentenceCreatorViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Sentence Creator"),
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: RaisedButton(
                  onPressed: () => viewModel.createSentence(),
                  color: Theme.of(context).primaryColorLight,
                  textColor: Theme.of(context).primaryColorDark,
                  child: Text("Create Sentence"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Consumer<SentenceCreatorViewModel>(
                builder: (_, vm, __) => Text(
                  vm.sentence,
                  textAlign: TextAlign.left,
                  textScaleFactor: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
