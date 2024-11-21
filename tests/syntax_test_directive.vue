// SYNTAX TEST "Vue Component.sublime-syntax"

<!--
 Conditional Rendering

 https://vuejs.org/guide/essentials/conditional.html#conditional-rendering
 -->

<div v-if="seen"></div>
//^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^ meta.attribute-with-value.directive.html
//   ^^^^ entity.other.attribute-name.html keyword.control.conditional.if.vue
//       ^ punctuation.separator.key-value.html
//        ^^^^^^ meta.string.html
//        ^ string.quoted.double.html punctuation.definition.string.begin.html
//         ^^^^ meta.interpolation.vue source.js.embedded.vue variable.other.readwrite.js
//             ^ string.quoted.double.html punctuation.definition.string.end.html

<div v-else-if="maybe + seen"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
//   ^^^^^^^^^ entity.other.attribute-name.html keyword.control.conditional.elseif.vue
//            ^ punctuation.separator.key-value.html
//             ^^^^^^^^^^^^^^ meta.string.html
//             ^ string.quoted.double.html punctuation.definition.string.begin.html
//              ^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue
//              ^^^^^ variable.other.readwrite.js
//                    ^ keyword.operator.arithmetic.js
//                      ^^^^ variable.other.readwrite.js
//                          ^ string.quoted.double.html punctuation.definition.string.end.html

<div v-else></div>
//^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^ meta.attribute-with-value.directive.html entity.other.attribute-name.html keyword.control.conditional.else.vue

<div v-show="visible"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
//   ^^^^^^ entity.other.attribute-name.html keyword.control.conditional.show.vue
//         ^ punctuation.separator.key-value.html
//          ^^^^^^^^^ meta.string.html
//          ^ string.quoted.double.html punctuation.definition.string.begin.html
//           ^^^^^^^ meta.interpolation.vue source.js.embedded.vue variable.other.readwrite.js
//                  ^ string.quoted.double.html punctuation.definition.string.end.html


<!--
 List Rendering

 https://vuejs.org/guide/essentials/list.html#list-rendering
 -->

<li v-for="todo in todos"> {{ todo.name }} </li>
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//  ^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
//  ^^^^^ entity.other.attribute-name.html keyword.control.loop.for.vue
//       ^ punctuation.separator.key-value.html
//        ^^^^^^^^^^^^^^^ meta.string.html
//        ^ string.quoted.double.html punctuation.definition.string.begin.html
//         ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue
//         ^^^^ variable.other.readwrite.js
//              ^^ keyword.operator.js
//                 ^^^^^ variable.other.readwrite.js
//                      ^ string.quoted.double.html punctuation.definition.string.end.html
//                       ^ punctuation.definition.tag.end.html
//                         ^^^^^^^^^^^^^^^ meta.interpolation.vue
//                         ^^ punctuation.section.interpolation.begin.html
//                           ^^^^^^^^^^^ source.js.embedded.vue
//                            ^^^^ variable.other.readwrite.js
//                                ^ punctuation.accessor.js
//                                 ^^^^ meta.property.object.js
//                                      ^^ punctuation.section.interpolation.end.html
//                                         ^^^^^ meta.tag


<!--
 Directive Arguments

 https://vuejs.org/guide/essentials/template-syntax.html#arguments
 -->

<div v-on:event="doSomething()"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
//   ^^^^^^^^^^ entity.other.attribute-name.html - entity.other entity.other
//   ^^^^ keyword.other.directive.vue
//       ^ punctuation.separator.vue
//             ^ punctuation.separator.key-value.html
//              ^^^^^^^^^^^^^^^ meta.string.html
//              ^ string.quoted.double.html punctuation.definition.string.begin.html
//               ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                            ^ meta.string.html string.quoted.double.html punctuation.definition.string.end.html

<div @event="doSomething()"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
//   ^^^^^^ entity.other.attribute-name.html - entity.other entity.other
//   ^ keyword.other.directive.vue
//         ^ punctuation.separator.key-value.html
//          ^^^^^^^^^^^^^^^ meta.string.html
//          ^ string.quoted.double.html punctuation.definition.string.begin.html
//           ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                        ^ meta.string.html string.quoted.double.html punctuation.definition.string.end.html


<!--
 Dynamic Directive Arguments

 https://vuejs.org/guide/essentials/template-syntax.html#dynamic-arguments
 -->

<div v-on:[eventName]="doSomething()"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
//   ^^^^^ entity.other.attribute-name.html
//   ^^^^ keyword.other.directive.vue
//       ^ punctuation.separator.vue
//        ^^^^^^^^^^^ meta.interpolation.vue
//        ^ punctuation.section.interpolation.begin.vue
//         ^^^^^^^^^ source.js.embedded.vue variable.other.readwrite.js
//                  ^ punctuation.section.interpolation.end.vue
//                   ^ punctuation.separator.key-value.html
//                    ^^^^^^^^^^^^^^^ meta.string.html
//                    ^ string.quoted.double.html punctuation.definition.string.begin.html
//                     ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                                  ^ meta.string.html string.quoted.double.html punctuation.definition.string.end.html

<div @[eventName]="doSomething()"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
//   ^ entity.other.attribute-name.html keyword.other.directive.vue
//    ^^^^^^^^^^^ meta.interpolation.vue
//    ^ punctuation.section.interpolation.begin.vue
//     ^^^^^^^^^ source.js.embedded.vue variable.other.readwrite.js
//              ^ punctuation.section.interpolation.end.vue
//               ^ punctuation.separator.key-value.html
//                ^^^^^^^^^^^^^^^ meta.string.html
//                ^ string.quoted.double.html punctuation.definition.string.begin.html
//                 ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                              ^ meta.string.html string.quoted.double.html punctuation.definition.string.end.html


<!--
 Event Modifiers

 https://vuejs.org/guide/essentials/event-handling.html#event-modifiers
 -->

<!-- the click event's propagation will be stopped -->
<a v-on:click.stop="doThis()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
// ^^^^^^^^^^^^^^^ entity.other.attribute-name.html
// ^^^^ keyword.other.directive.vue
//     ^ punctuation.separator.vue
//           ^ punctuation.separator.vue
//            ^^^^ storage.modifier.vue
//                ^ punctuation.separator.key-value.html
//                 ^^^^^^^^^^ meta.string.html
//                 ^ string.quoted.double.html punctuation.definition.string.begin.html
//                  ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                          ^ string.quoted.double.html punctuation.definition.string.end.html

<!-- the click event's propagation will be stopped -->
<a @click.stop="doThis()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
// ^^^^^^^^^^^ entity.other.attribute-name.html
// ^ keyword.other.directive.vue
//       ^ punctuation.separator.vue
//        ^^^^ storage.modifier.vue
//            ^ punctuation.separator.key-value.html
//             ^^^^^^^^^^ meta.string.html
//             ^ string.quoted.double.html punctuation.definition.string.begin.html
//              ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                      ^ string.quoted.double.html punctuation.definition.string.end.html

<!-- modifiers can be chained -->
<a @click.stop.prevent="doThat()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
// ^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.html
// ^ keyword.other.directive.vue
//       ^ punctuation.separator.vue
//        ^^^^ storage.modifier.vue
//            ^ punctuation.separator.vue
//             ^^^^^^^ storage.modifier.vue
//                    ^ punctuation.separator.key-value.html
//                     ^^^^^^^^^^ meta.string.html
//                     ^ string.quoted.double.html punctuation.definition.string.begin.html
//                      ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                              ^ string.quoted.double.html punctuation.definition.string.end.html

<a v-on:click:outside.prevent="doThis()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
// ^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.html
// ^^^^ keyword.other.directive.vue
//     ^ punctuation.separator.vue
//           ^ - punctuation
//                   ^ punctuation.separator.vue
//                    ^^^^^^^ storage.modifier.vue
//                           ^ punctuation.separator.key-value.html
//                            ^^^^^^^^^^ meta.string.html
//                            ^ string.quoted.double.html punctuation.definition.string.begin.html
//                             ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                                     ^ string.quoted.double.html punctuation.definition.string.end.html

<a @click:outside.prevent="doThat()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-with-value.directive.html
// ^^^^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.html
// ^ keyword.other.directive.vue
//       ^ - punctuation
//               ^ punctuation.separator.vue
//                ^^^^^^^ storage.modifier.vue
//                       ^ punctuation.separator.key-value.html
//                        ^^^^^^^^^^ meta.string.html
//                        ^ string.quoted.double.html punctuation.definition.string.begin.html
//                         ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                                 ^ string.quoted.double.html punctuation.definition.string.end.html

<!--
 Nested brackets and quotes
 -->

<div
    v-bind:[styles["name"]]='{
//  ^^^^^^ keyword.other.directive.vue
//        ^ punctuation.separator.vue
//         ^^^^^^^^^^^^^^^^ meta.interpolation.vue
//         ^ punctuation.section.interpolation.begin.vue
//          ^^^^^^ variable.other.readwrite.js
//                ^^^^^^^^ meta.brackets.js
//                ^ punctuation.section.brackets.begin.js
//                 ^^^^^^ meta.string.js string.quoted.double.js
//                       ^ punctuation.section.brackets.end.js
//                        ^ punctuation.section.interpolation.end.vue
//                         ^ punctuation.separator.key-value.html
//                          ^ meta.string.html string.quoted.single.html punctuation.definition.string.begin.html
//                           ^^ meta.string.html meta.interpolation.vue source.js.embedded.vue meta.mapping.js
        backgroundColor: active ? "green" : "red",
//                              ^ keyword.operator.ternary.js
//                                ^^^^^^^ meta.string.js string.quoted.double.js
//                                        ^ keyword.operator.ternary.js
//                                          ^^^^^ meta.string.js string.quoted.double.js
        width: `'${width + "double" + 'single' + quoted}px'` // note the single quotes!
//             ^^ meta.string string.quoted.other.js
//               ^^^^^^^^^^ meta.string meta.interpolation.js - string
//                         ^^^^^^^^ meta.interpolation.js string.quoted.double.js
//                                 ^^^ meta.string meta.interpolation.js - string
//                                    ^^^^^^^^ meta.interpolation.js string.quoted.single.js
//                                            ^^^^^^^^^^ meta.string meta.interpolation.js - string
//                                                      ^^^^ meta.string string.quoted.other.js
    }'>
//^^^ meta.string.html meta.interpolation.vue source.js.embedded.vue meta.mapping.js
//   ^ meta.string.html string.quoted.single.html punctuation.definition.string.end.html
