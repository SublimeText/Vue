// SYNTAX TEST "Vue Component.sublime-syntax"

    </script>
//  ^^^^^^^^^ meta.tag.script.end.html

    <script> var i = 0; </script>
//  ^^^^^^^^ meta.tag - source
//          ^^^^^^^^^^^^ source.jsx.embedded.html - meta.tag
//                      ^^^^^^^^^ meta.tag - source

    <script> var i = 0; --> </script>
//  ^^^^^^^^ meta.tag - source
//          ^^^^^^^^^^^^ source.jsx.embedded.html - meta.tag
//                      ^^^^ - meta.tag - source
//                      ^^^ comment.block.html punctuation.definition.comment.end.html
//                          ^^^^^^^^^ meta.tag - source

    <script> <!-- var i = 0; </script>
//  ^^^^^^^^ meta.tag - source
//          ^^^^^ - meta.tag - source
//               ^^^^^^^^^^^^ source.jsx.embedded.html - meta.tag
//                           ^^^^^^^^^ meta.tag - source
//           ^^^^ punctuation.definition.comment.begin.html

    <script> <!-- var i = 0; --> </script>
//  ^^^^^^^^ meta.tag - source
//          ^^^^^ - meta.tag - source
//           ^^^^ punctuation.definition.comment.begin.html
//               ^^^^^^^^^^^^ source.jsx.embedded.html - meta.tag
//                           ^^^^ - meta.tag - source
//                           ^^^ comment.block.html punctuation.definition.comment.end.html
//                               ^^^^^^^^^ meta.tag - source


    <script>

// <- source.jsx.embedded.html
    var i = 0;
// ^^^^^^^^^^^^ source.jsx.embedded.html - source source
    export default {
      render () {
        return <div>{ this.foo }</div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.jsx.embedded.html
//      ^^^^^^ keyword.control.flow.return.js
//             ^^^^^^^^^^^^^^^^^^^^^^^ meta.jsx.js
//             ^^^^^ meta.tag
//             ^ punctuation.definition.tag.begin.js
//              ^^^ entity.name.tag
//                 ^ punctuation.definition.tag.end.js
//                  ^^^^^^^^^^^^ meta.interpolation.js
//                  ^ punctuation.definition.interpolation.begin.js
//                   ^^^^^^^^^^ source.js.embedded.jsx
//                             ^ punctuation.definition.interpolation.end.js
//                              ^^^^^^ meta.tag
//                              ^^ punctuation.definition.tag.begin.js
//                                ^^^ entity.name.tag
//                                   ^ punctuation.definition.tag.end.js
      }
//^^^^^^ source.jsx.embedded.html
//    ^ punctuation.section
    }
//^^^^ source.jsx.embedded.html
//  ^ punctuation.section
    </script>
//  ^^^^^^^^^ meta.tag - source


    <script>
    <!--
//^^^^^^ - meta.tag - source
//  ^^^^ comment.block.html punctuation.definition.comment.begin.html
    var i = 0;
// ^^^^^^^^^^^^ source.jsx.embedded.html - source source - meta.tag
    -->
//  ^^^ comment.block.html punctuation.definition.comment.end.html - source
//     ^ - comment - source
    var i = 0;
// ^^^^^^^^^^^^ - source
    </script>
//  ^^^^^^^^^ meta.tag - source


    <script> <!--
//  ^^^^^^^^^^^^^ - source
//  ^^^^^^^^ meta.tag
//  ^ punctuation.definition.tag.begin.html
//   ^^^^^^ entity.name.tag
//         ^ punctuation.definition.tag.end.html
//          ^ - meta.tag - comment
//           ^^^^ comment.block.html punctuation.definition.comment.begin.html

    var foo = 100;
// <- source.jsx.embedded.html - source source

    (a --> b);
//     ^^^ source.jsx.embedded.html keyword.operator - comment

    --> </script>
//  ^^^ comment.block.html punctuation.definition.comment.end.html - source
//     ^ - comment - meta.tag - source
//      ^^^^^^^^^ meta.tag - comment - source
//      ^^ punctuation.definition.tag.begin.html
//        ^^^^^^ entity.name.tag
//              ^ punctuation.definition.tag.end.html


    <script type="text/javascript"> <!--
//  ^^^^^^^^ meta.tag - meta.attribute-with-value - source
//          ^^^^^^^^^^^^^^^^^^^^^^ meta.tag meta.attribute-with-value - meta.attribute-with-value meta.attribute-with-value - source
//                                ^ meta.tag - meta.attribute-with-value - source
//                                 ^^^^^ - meta.tag - source
//   ^^^^^^ entity.name.tag
//          ^^^^ entity.other.attribute-name.html
//              ^ punctuation.separator.key-value.html
//               ^^^^^^^^^^^^^^^^^ string.quoted.double.html
//                                  ^^^^ comment.block.html punctuation.definition.comment.begin.html

    var foo = 100;
// <- source.jsx.embedded.html - source source

    (a --> b);
//     ^^^ source.jsx.embedded.html keyword.operator - comment

    --> </script>
//  ^^^ comment.block.html punctuation.definition.comment.end.html - source
//     ^ - comment - meta.tag - source
//      ^^^^^^^^^ meta.tag - comment - source
//      ^^ punctuation.definition.tag.begin.html
//        ^^^^^^ entity.name.tag
//              ^ punctuation.definition.tag.end.html


    <script
    type
//  ^^^^ meta.tag meta.attribute-with-value - meta.attribute-with-value meta.attribute-with-value
    =
    application/jAvAsCrIpT>
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.tag meta.attribute-with-value - meta.attribute-with-value meta.attribute-with-value
    var foo = 100;
// <- source.jsx.embedded.html - source source
// ^^^^^^^^^^^^^^^^ source.jsx.embedded.html - source source
    </script>
//  ^^^^^^^^^ meta.tag - source


    <!--
     -- CoffeeScript
     -->

    <script language="coffeescript">  </script>
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag - meta.tag meta.tag - source
//          ^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.lang.html - meta.attribute-with-value meta.attribute-with-value
//                                  ^^ source.coffee.embedded.html - meta.tag
//                                    ^^^^^^^^^ meta.tag - source

    <script lang="coffee">  </script>
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.tag - meta.tag meta.tag - source
//          ^^^^^^^^^^^^^ meta.attribute-with-value.lang.html - meta.attribute-with-value meta.attribute-with-value
//                        ^^ source.coffee.embedded.html - meta.tag
//                          ^^^^^^^^^ meta.tag - source

    <script lang="coffee">

// <- source.coffee.embedded.html - source source
    </script>
//  ^^^^^^^^^ meta.tag - source

    <script lang="coffee">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    var i = 0;
// ^^^^^^^^^^^^ - source
    </script>
//  ^^^^^^^^^ meta.tag - source


    <!--
     -- JSX
     -->

    <script lang="jsx">

// <- source.jsx.embedded.html - source source
    </script>
//  ^^^^^^^^^ meta.tag - source

    <script lang="jsx">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    var i = 0;
// ^^^^^^^^^^^^ - source
    </script>
//  ^^^^^^^^^ meta.tag - source


    <!--
     -- LiveScript
     -->

    <script lang="livescript">

// <- source.livescript.embedded.html - source source
    </script>
//  ^^^^^^^^^ meta.tag - source

    <script lang="livescript">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    var i = 0;
// ^^^^^^^^^^^^ - source
    </script>
//  ^^^^^^^^^ meta.tag - source


    <!--
     -- TypeScript
     -->

    <script lang="ts">

// <- source.ts.embedded.html - source source
    </script>
//  ^^^^^^^^^ meta.tag - source

    <script lang="ts">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    var i = 0;
// ^^^^^^^^^^^^ - source
    </script>
//  ^^^^^^^^^ meta.tag - source


    <!--
     -- TSX
     -->

    <script lang="tsx">

// <- source.tsx.embedded.html - source source
    </script>
//  ^^^^^^^^^ meta.tag - source

    <script lang="tsx">
        <!--
// ^^^^^^^^^ - source
//      ^^^^ comment.block.html punctuation.definition.comment.begin.html
        -->
// <- - comment
//^^^^^^ - comment
//      ^^^ comment.block.html punctuation.definition.comment.end.html - source
//         ^ - comment - source
    var i = 0;
// ^^^^^^^^^^^^ - source
    </script>
//  ^^^^^^^^^ meta.tag - source
