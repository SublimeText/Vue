// SYNTAX TEST "Vue Component.sublime-syntax"

    <!--
    Text Interpolation

    The most basic form of data binding is text interpolation
    using the "Mustache" syntax (double curly braces):

    see: https://vuejs.org/guide/essentials/template-syntax.html#text-interpolation
     -->

    <h1> {{ foo.text }} </h1>
//       ^^^^^^^^^^^^^^ meta.interpolation.vue
//       ^^ punctuation.section.interpolation.begin.html
//         ^^^^^^^^^^ source.js.embedded.vue
//                   ^^ punctuation.section.interpolation.end.html

    <p {{foo.attrib}}>
//     ^^^^^^^^^^^^^^ meta.interpolation.vue
//     ^^ punctuation.section.interpolation.begin.html
//       ^^^^^^^^^^ source.js.embedded.vue
//                 ^^ punctuation.section.interpolation.end.html

    <!--
    Mustache tags may only contain expressions!

    see: https://vuejs.org/guide/essentials/template-syntax.html#expressions-only
    -->

    {{ number + 1 }}
//  ^^^^^^^^^^^^^^^^ meta.interpolation.vue
//  ^^ punctuation.section.interpolation.begin.html
//    ^^^^^^^^^^^^ source.js.embedded.vue
//     ^^^^^^ variable.other.readwrite.js
//            ^ keyword.operator.arithmetic.js
//              ^ meta.number.integer.decimal.js constant.numeric.value.js
//                ^^ punctuation.section.interpolation.end.html

    {{ ok ? 'YES' : 'NO' }}
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.vue
//  ^^ punctuation.section.interpolation.begin.html
//    ^^^^^^^^^^^^^^^^^^^ source.js.embedded.vue
//     ^^ variable.other.readwrite.js
//        ^ keyword.operator.ternary.js
//          ^^^^^ meta.string.js string.quoted.single.js
//          ^ punctuation.definition.string.begin.js
//              ^ punctuation.definition.string.end.js
//                ^ keyword.operator.ternary.js
//                  ^^^^ meta.string.js string.quoted.single.js
//                  ^ punctuation.definition.string.begin.js
//                     ^ punctuation.definition.string.end.js
//                       ^^ punctuation.section.interpolation.end.html

    {{ message.split('').reverse().join('') }}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.vue
//  ^^ punctuation.section.interpolation.begin.html
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.js.embedded.vue
//     ^^^^^^^ variable.other.readwrite.js
//            ^ punctuation.accessor.js
//             ^^^^^ meta.function-call variable.function.js
//                  ^^^^ meta.function-call meta.group.js
//                  ^ punctuation.section.group.begin.js
//                   ^^ meta.string.js string.quoted.single.js
//                   ^ punctuation.definition.string.begin.js
//                    ^ punctuation.definition.string.end.js
//                     ^ punctuation.section.group.end.js
//                      ^ punctuation.accessor.js
//                       ^^^^^^^ meta.function-call variable.function.js
//                              ^^ meta.function-call meta.group.js
//                              ^ punctuation.section.group.begin.js
//                               ^ punctuation.section.group.end.js
//                                ^ punctuation.accessor.js
//                                 ^^^^ meta.function-call variable.function.js
//                                     ^^^^ meta.function-call meta.group.js
//                                     ^ punctuation.section.group.begin.js
//                                      ^^ meta.string.js string.quoted.single.js
//                                      ^ punctuation.definition.string.begin.js
//                                       ^ punctuation.definition.string.end.js
//                                        ^ punctuation.section.group.end.js
//                                          ^^ punctuation.section.interpolation.end.html

    <div :id="`list-${id}`"></div>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//           ^^^^^^^^^^^^^ meta.string.vue
//           ^ string.quoted.double.vue punctuation.definition.string.begin.vue - meta.interpolation
//            ^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.string string
//                  ^^^^^ meta.interpolation.vue source.js.embedded.vue meta.string meta.interpolation.js
//                       ^ meta.interpolation.vue source.js.embedded.vue meta.string string
//                        ^ string.quoted.double.vue punctuation.definition.string.end.vue - meta.interpolation

    <!-- this is a statement, not an expression: -->
    {{ var a = 1 }}
//  ^^^^^^^^^^^^^^^ meta.interpolation.vue
//  ^^ punctuation.section.interpolation.begin.html
//    ^^^^^^^^^^^ source.js.embedded.vue
//               ^^ punctuation.section.interpolation.end.html

    <!-- flow control won't work either, use ternary expressions -->
    {{ if (ok) { return message } }}
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.vue
//  ^^ punctuation.section.interpolation.begin.html
//    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.js.embedded.vue
//                                ^^ punctuation.section.interpolation.end.html


    <!--
    Attribute Bindings

    Mustaches cannot be used inside HTML attributes. Instead, use a v-bind directive:

    see: https://vuejs.org/guide/essentials/template-syntax.html#attribute-bindings
     -->

    <p attrib="{{ foo.value }}" >
//            ^^^^^^^^^^^^^^^^^ meta.tag meta.attribute-with-value.html meta.string.html - meta.interpolation

    <p attrib='{{ foo.value }}' >
//            ^^^^^^^^^^^^^^^^^ meta.tag meta.attribute-with-value.html meta.string.html - meta.interpolation

    <p attrib={{ foo.value }} >
//            ^^ meta.tag meta.attribute-with-value.html meta.string.html string.unquoted.html - meta.interpolation
//               ^^^^^^^^^ meta.attribute-with-value.html entity.other.attribute-name.html
//                         ^^ meta.attribute-with-value.html entity.other.attribute-name.html

    <![CDATA[This is {{interpolated}} content.]]>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.sgml.cdata.html
//  ^^^ punctuation.definition.tag.begin.html
//     ^^^^^ keyword.declaration.cdata.html
//          ^ punctuation.definition.tag.begin.html
//           ^^^^^^^^ string.unquoted.cdata.html - meta.interpolation
//                   ^^^^^^^^^^^^^^^^ meta.interpolation.vue - string
//                   ^^ punctuation.section.interpolation.begin.html
//                     ^^^^^^^^^^^^ source.js.embedded.vue variable.other.readwrite.js
//                                 ^^ punctuation.section.interpolation.end.html
//                                   ^^^^^^^^^ string.unquoted.cdata.html - meta.interpolation
//                                            ^^^ punctuation.definition.tag.end.html

</html>
