import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

typedef SliverMarkdownWidgetBuilder = Widget Function(
    BuildContext context, Widget child);

class SliverMarkdown extends MarkdownWidget {
  const SliverMarkdown({
    Key? key,
    required String data,
    bool selectable = false,
    MarkdownStyleSheet? styleSheet,
    MarkdownStyleSheetBaseTheme? styleSheetTheme,
    SyntaxHighlighter? syntaxHighlighter,
    MarkdownTapLinkCallback? onTapLink,
    VoidCallback? onTapText,
    String? imageDirectory,
    List<md.BlockSyntax>? blockSyntaxes,
    List<md.InlineSyntax>? inlineSyntaxes,
    md.ExtensionSet? extensionSet,
    MarkdownImageBuilder? imageBuilder,
    MarkdownCheckboxBuilder? checkboxBuilder,
    MarkdownBulletBuilder? bulletBuilder,
    Map<String, MarkdownElementBuilder> builders =
        const <String, MarkdownElementBuilder>{},
    Map<String, MarkdownPaddingBuilder> paddingBuilders =
        const <String, MarkdownPaddingBuilder>{},
    MarkdownListItemCrossAxisAlignment listItemCrossAxisAlignment =
        MarkdownListItemCrossAxisAlignment.baseline,
    bool fitContent = true,
    bool softLineBreak = false,
    this.padding = EdgeInsets.zero,
    this.itemBuilder,
  }) : super(
          key: key,
          data: data,
          selectable: selectable,
          styleSheet: styleSheet,
          styleSheetTheme: styleSheetTheme,
          syntaxHighlighter: syntaxHighlighter,
          onTapLink: onTapLink,
          onTapText: onTapText,
          imageDirectory: imageDirectory,
          blockSyntaxes: blockSyntaxes,
          inlineSyntaxes: inlineSyntaxes,
          extensionSet: extensionSet,
          imageBuilder: imageBuilder,
          checkboxBuilder: checkboxBuilder,
          builders: builders,
          paddingBuilders: paddingBuilders,
          listItemCrossAxisAlignment: listItemCrossAxisAlignment,
          bulletBuilder: bulletBuilder,
          fitContent: fitContent,
          softLineBreak: softLineBreak,
        );

  final EdgeInsets padding;
  final SliverMarkdownWidgetBuilder? itemBuilder;

  @override
  Widget build(BuildContext context, List<Widget>? children) {
    return SliverPadding(
      padding: padding,
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          if (children != null)
            ...children.map(
              (x) => itemBuilder?.call(context, x) ?? x,
            ),
        ]),
      ),
    );
  }
}
