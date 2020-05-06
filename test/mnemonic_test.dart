import 'package:flutter_test/flutter_test.dart';
import 'package:mnemonic/mnemonic.dart';

void main() {
  test('Mnemonic follows the rule -> Adjective, Noun, Verb, Adverb', () {
    final mnemonic = Mnemonic();

    final acronym = mnemonic.acronym;
    expect(acronym.length, 4);

    expect(Mnemonic.adjectives.contains(mnemonic.words[0]), true);
    expect(Mnemonic.nouns.contains(mnemonic.words[1]), true);
    expect(Mnemonic.verbs.contains(mnemonic.words[2]), true);
    expect(Mnemonic.adverbs.contains(mnemonic.words[3]), true);
  });
}
