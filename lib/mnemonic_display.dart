import 'package:flutter/material.dart';
import 'package:mnemonic/mnemonic.dart';

class MnemonicDisplay extends StatelessWidget {
  final Mnemonic mnemonic;
  final Color color;

  const MnemonicDisplay({
    Key key,
    @required this.mnemonic,
    this.color,
  })  : assert(mnemonic != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = color ?? Theme.of(context).textTheme.title.color;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration:
              BoxDecoration(border: Border.all(width: 2, color: textColor)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              mnemonic.acronym,
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: textColor),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            mnemonic.words.join(' '),
            style: TextStyle(color: textColor),
          ),
        )
      ],
    );
  }
}
