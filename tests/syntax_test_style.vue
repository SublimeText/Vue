// SYNTAX TEST "Vue Component.sublime-syntax"

    </style>
//  ^^^^^^^^ meta.tag.style.end.html

    <style> h1 {} </style>
//  ^^^^^^^ meta.tag - source
//         ^^^^^^^ source.css.embedded.html - meta.tag
//                ^^^^^^^^ meta.tag - source

    <style> h1 {} --> </style>
//  ^^^^^^^ meta.tag - source
//         ^^^^^^^ source.css.embedded.html - meta.tag
//                ^^^^ - meta.tag - source
//                ^^^ comment.block.html punctuation.definition.comment.end.html
//                    ^^^^^^^^ meta.tag - source

    <style> <!-- h1 {} </style>
//  ^^^^^^^ meta.tag - source
//         ^^^^^ - meta.tag - source
//              ^^^^^^^ source.css.embedded.html - meta.tag
//                     ^^^^^^^^ meta.tag - source
//          ^^^^ punctuation.definition.comment.begin.html

    <style> <!-- h1 {} --> </style>
//  ^^^^^^^ meta.tag - source
//         ^^^^^ - meta.tag - source
//          ^^^^ punctuation.definition.comment.begin.html
//              ^^^^^^^ source.css.embedded.html - meta.tag
//                     ^^^^ - meta.tag - source
//                     ^^^ comment.block.html punctuation.definition.comment.end.html
//                         ^^^^^^^^ meta.tag - source


    <style>

// <- source.css.embedded.html

    </style>
//  ^^^^^^^^ meta.tag - source


    <style>
        <!--
//^^^^^^^^^^ - meta.tag - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html
        h1 {}
// ^^^^^^^^^^^ source.css.embedded.html - source source - meta.tag
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    </style>
//  ^^^^^^^^ meta.tag - source


    <style> <!--
//  ^^^^^^^^^^^^ - source
//  ^^^^^^^ meta.tag
//  ^ punctuation.definition.tag.begin.html
//   ^^^^^ entity.name.tag
//        ^ punctuation.definition.tag.end.html
//         ^ - meta.tag - comment
//          ^^^^ comment.block.html punctuation.definition.comment.begin.html

    h1 {}
// <- source.css.embedded.html - source source

    --> </style>
// <- - comment
//^^ - comment
//  ^^^ comment.block.html punctuation.definition.comment.end.html - source
//     ^ - comment - meta.tag - source
//      ^^^^^^^^ meta.tag - comment - source
//      ^^ punctuation.definition.tag.begin.html
//        ^^^^^ entity.name.tag
//             ^ punctuation.definition.tag.end.html


    <style type="text/css"> <!--
//  ^^^^^^^ meta.tag - meta.attribute-with-value - source
//         ^^^^^^^^^^^^^^^ meta.tag meta.attribute-with-value - meta.attribute-with-value meta.attribute-with-value - source
//                        ^ meta.tag - meta.attribute-with-value - source
//                         ^^^^^ - meta.tag - source
//   ^^^^^ entity.name.tag
//         ^^^^ entity.other.attribute-name.html
//             ^ punctuation.separator.key-value.html
//              ^^^^^^^^^^ string.quoted.double.html
//                          ^^^^ comment.block.html punctuation.definition.comment.begin.html

    h1 {}
// <- source.css.embedded.html - source source

    --> </style>
// <- - comment
//^^ - comment
//  ^^^ comment.block.html punctuation.definition.comment.end.html - source
//     ^ - comment - meta.tag - source
//      ^^^^^^^^ meta.tag - comment - source
//      ^^ punctuation.definition.tag.begin.html
//        ^^^^^ entity.name.tag
//             ^ punctuation.definition.tag.end.html


    <style
    type
//  ^^^^ meta.tag meta.attribute-with-value - meta.attribute-with-value meta.attribute-with-value
    =
    tExT/cSs>
//  ^^^^^^^^ meta.tag meta.attribute-with-value - meta.attribute-with-value meta.attribute-with-value

    h1 {}
// <- source.css.embedded.html - source source

    </style>
//  ^^^^^^^^ meta.tag - source


    <!--
     -- Less
     -->

    <style lang="less">  </style>
//  ^^^^^^^^^^^^^^^^^^^ meta.tag - source
//         ^^^^^^^^^^^ meta.attribute-with-value.lang.html - meta.attribute-with-value meta.attribute-with-value
//                     ^^ source.less.embedded.html - meta.tag
//                       ^^^^^^^^ meta.tag - source


    <style lang="less">

// <- source.less.embedded.html - source source
    </style>
//  ^^^^^^^^ meta.tag - source


    <style lang="less">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html

// <- source.less.embedded.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    </style>
// <- - source - comment - meta.tag
//^^ - source - comment - meta.tag
//  ^^^^^^^^ meta.tag - source


    <!--
     -- PostCSS
     -->

    <style lang="postcss">

// <- source.postcss.embedded.html
    </style>
//  ^^^^^^^^ meta.tag - source


    <style lang="postcss">
        <!--
// ^^^^^^^^^ - source.postcss
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html

// <- source.postcss.embedded.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    </style>
//  ^^^^^^^^ meta.tag - source


    <!--
     -- SugarSS
     -->

    <style lang="postcss?parser=sugarss">

// <- source.sss.embedded.html - source source
    </style>
//  ^^^^^^^^ meta.tag - source


    <style lang="postcss?parser=sugarss">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html

// <- source.sss.embedded.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    </style>
//  ^^^^^^^^ meta.tag - source


    <!--
     -- Sass
     -->

    <style lang="sass">

// <- source.sass.embedded.html - source source
    </style>
//  ^^^^^^^^ meta.tag - source


    <style lang="sass">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html

// <- source.sass.embedded.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    </style>
//  ^^^^^^^^ meta.tag - source


    <!--
     -- SCSS
     -->

    <style lang="scss">

// <- source.scss.embedded.html - source source
    </style>
//  ^^^^^^^^ meta.tag - source


    <style lang="scss">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html

// <- source.scss.embedded.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    </style>
//  ^^^^^^^^ meta.tag - source


    <!--
     -- Stylus
     -->

    <style lang="stylus">

// <- source.stylus.embedded.html - source source
    </style>
//  ^^^^^^^^ meta.tag - source


    <style lang="stylus">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html

// <- source.stylus.embedded.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    </style>
//  ^^^^^^^^ meta.tag - source
