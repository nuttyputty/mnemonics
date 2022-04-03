import 'package:flutter_test/flutter_test.dart';
import 'package:mnemonic/mnemonic.dart';

void main() {
  void _validateAlgorithm(Mnemonic mnemonic) {
    expect(Mnemonic.adjectives.contains(mnemonic.words[0]), true);
    expect(Mnemonic.nouns.contains(mnemonic.words[1]), true);
    expect(Mnemonic.verbs.contains(mnemonic.words[2]), true);
    expect(Mnemonic.adverbs.contains(mnemonic.words[3]), true);
  }

  test('Mnemonic follows the rule -> Adjective, Noun, Verb, Adverb', () {
    final mnemonic = Mnemonic();

    final acronym = mnemonic.acronym;
    expect(acronym.length, 4);
    _validateAlgorithm(mnemonic);
  });

  test('Mnemonics can be created from four letter codes', () {
    final word = 'TEST';
    final mnemonic = Mnemonic.fromAcronym(word);
    expect(mnemonic.acronym, word);
    _validateAlgorithm(mnemonic);
  });

  test('Acroynms with an X fail gracefully', () {
    final word = 'EXIT';
    Mnemonic? mnemonic;

    try {
      mnemonic = Mnemonic.fromAcronym(word);
    } catch (e) {
      expect(e, 'The letter X is not supported');
    }

    expect(mnemonic, null);
  });
}
