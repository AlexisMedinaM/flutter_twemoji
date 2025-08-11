# flutter_twemoji
Based on [Discord's fork of twemoji (v16.0.1)](https://github.com/discord/twemoji)

<img src="https://raw.githubusercontent.com/jasonlessenich/flutter_twemoji/main/art/1.png" width=270>

## Usage

### Display a Single Emoji

Use the **Twemoji** Widget to display individual emojis.

```dart
Twemoji(
  emoji: '🍕',
  height: 50,
  width: 50,
)
```

### Render Text with Emojis

The **TwemojiText** Widget allows you to render text with embedded Twemoji.

```dart
TwemojiText(
  text: 'Flutter is awesome 🎉',
)
```

### Rich Text with Emojis

Combine the **TwemojiTextSpan** with **RichText** to create rich text content with emojis.

```dart
RichText(
    text: TwemojiTextSpan(
    text: 'Text 🍕🍔🌭🍿🧂🥓🥨🥐🍞🥞🥞',
    style: Theme.of(context).textTheme.headline6,
  ),
)
```

### Only include specific emojis
By default, the package includes _all_ twemojis.
To reduce the overall bundle size, you can specify which emojis to include in your pubspec.yaml:

```yaml
flutter_twemoji:
  includes: '🍕🍔🌭🍿🧂🥓🥨🥐🍞🥞🥞'
```

Then call `dart run flutter_twemoji:include_emojis` to have it filter down the list of emojis
to generate assets for.

## Credits
- Originally maintained by [hadi-codes](https://github.com/hadi-codes/twemoji)