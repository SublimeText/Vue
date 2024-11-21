// SYNTAX TEST "Vue Component.sublime-syntax"

<!--
 Test i18n loader tags

 https://github.com/kazupon/vue-i18n
 -->

<i18n src="./common/locales.json"></i18n>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.i18n.begin.html
//^^^ entity.name.tag.i18n.html
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.href.html
//    ^^^ entity.other.attribute-name.href.html
//       ^ punctuation.separator.key-value.html
//        ^ meta.string.html string.quoted.double.html punctuation.definition.string.begin.html
//         ^^^^^^^^^^^^^^^^^^^^^ meta.path.url.html meta.string.html string.quoted.double.html
//          ^ punctuation.separator.path.html
//                 ^ punctuation.separator.path.html
//                              ^ meta.string.html string.quoted.double.html punctuation.definition.string.end.html
//                               ^ punctuation.definition.tag.end.html
//                                ^^^^^^^ meta.tag.i18n.end.html
//                                ^^ punctuation.definition.tag.begin.html
//                                  ^^^^ entity.name.tag.i18n.html
//                                      ^ punctuation.definition.tag.end.html

<i18n>
//^^^^ meta.tag.i18n.begin.html
//^^^ entity.name.tag.i18n.html
//   ^ punctuation.definition.tag.end.html
//    ^ - source

// <- source.yaml.embedded.html
</i18n>
//^^^^^ meta.tag.i18n.end.html
//^^^^ entity.name.tag.i18n.html
//    ^ punctuation.definition.tag.end.html

<i18n>
    {
//  ^ source.json.embedded.html meta.mapping.json punctuation.section.mapping.begin.json
      "en": {
//    ^^^^ source.json.embedded.html meta.mapping.key.json string.quoted.double.json
        "homePage": "Home",
//     ^^^^^^^^^^^^^^^^^^^^^ source.json.embedded.html meta.mapping.value.json
//      ^^^^^^^^^^ meta.mapping.key.json string.quoted.double.json
//                ^ meta.mapping.json punctuation.separator
//                  ^^^^^^ meta.mapping.value.json string.quoted.double.json
      },
//  ^^^ source.json.embedded.html meta.mapping.value.json meta.mapping.json
    }
//  ^ source.json.embedded.html meta.mapping.json punctuation.section.mapping.end.json
</i18n>
//^^^^^ meta.tag.i18n.end.html
//^^^^ entity.name.tag.i18n.html
//    ^ punctuation.definition.tag.end.html

<i18n>
    en:
      homePage: Home
//   ^^^^^^^^^^^^^^^^ source.yaml.embedded.html
//    ^^^^^^^^ meta.mapping.key string.unquoted, entity.name.tag
//            ^ punctuation.separator
//              ^^^^ string.unquoted
</i18n>
//^^^^^ meta.tag.i18n.end.html
//^^^^ entity.name.tag.i18n.html
//    ^ punctuation.definition.tag.end.html

<i18n
    attr="value"
//^^^^^^^^^^^^^^ meta.tag.i18n.begin.html
//  ^^^^^^^^^^^^ meta.attribute-with-value.html
//  ^^^^ entity.other.attribute-name.html
//      ^ punctuation.separator.key-value.html
//       ^^^^^^^ meta.string.html string.quoted.double.html
//       ^ punctuation.definition.string.begin.html
//             ^ punctuation.definition.string.end.html
>
// <- meta.tag.i18n.begin.html punctuation.definition.tag.end.html
    en:
      homePage: Home
//   ^^^^^^^^^^^^^^^^ source.yaml.embedded.html
//    ^^^^^^^^ meta.mapping.key string.unquoted, entity.name.tag
//            ^ punctuation.separator
//              ^^^^ string.unquoted
</i18n
//^^^^^ meta.tag.i18n.end.html
//^^^^ entity.name.tag.i18n.html
>
// <- meta.tag.i18n.end.html punctuation.definition.tag.end.html
