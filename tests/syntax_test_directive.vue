// SYNTAX TEST "Vue Component.sublime-syntax"

<!--
 Conditional Rendering

 https://vuejs.org/guide/essentials/conditional.html#conditional-rendering
 -->

<div v-if=''></div>
//^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^ meta.directive.vue keyword.control.conditional.if.vue
//       ^ meta.directive.vue punctuation.separator.key-value.vue
//        ^^ meta.directive.value.vue meta.string.vue
//        ^ string.quoted.single.vue punctuation.definition.string.begin.vue
//         ^ string.quoted.single.vue punctuation.definition.string.end.vue
//          ^ punctuation.definition.tag.end.html

<div v-if=""></div>
//^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^ meta.directive.vue keyword.control.conditional.if.vue
//       ^ meta.directive.vue punctuation.separator.key-value.vue
//        ^^ meta.directive.value.vue meta.string.vue
//        ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//         ^ string.quoted.double.vue punctuation.definition.string.end.vue
//          ^ punctuation.definition.tag.end.html

<div v-if="seen"></div>
//^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^ meta.directive.vue keyword.control.conditional.if.vue
//       ^ meta.directive.vue punctuation.separator.key-value.vue
//        ^^^^^^ meta.directive.value.vue meta.string.vue
//        ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//         ^^^^ meta.interpolation.vue source.js.embedded.vue variable.other.readwrite.js
//             ^ string.quoted.double.vue punctuation.definition.string.end.vue

<div v-else-if="maybe + seen"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^^^^ meta.directive.vue keyword.control.conditional.elseif.vue
//            ^ meta.directive.vue punctuation.separator.key-value.vue
//             ^^^^^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//             ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//              ^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue
//              ^^^^^ variable.other.readwrite.js
//                    ^ keyword.operator.arithmetic.js
//                      ^^^^ variable.other.readwrite.js
//                          ^ string.quoted.double.vue punctuation.definition.string.end.vue

<div v-else></div>
//^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^ meta.directive.vue keyword.control.conditional.else.vue

<div v-show="visible"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^^^ meta.directive.vue keyword.control.conditional.show.vue
//         ^ meta.directive.vue punctuation.separator.key-value.vue
//          ^^^^^^^^^ meta.directive.value.vue meta.string.vue
//          ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//           ^^^^^^^ meta.interpolation.vue source.js.embedded.vue variable.other.readwrite.js
//                  ^ string.quoted.double.vue punctuation.definition.string.end.vue


<!--
 List Rendering

 https://vuejs.org/guide/essentials/list.html#list-rendering
 -->

<li v-for="todo in todos"> {{ todo.name }} </li>
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//  ^^^^^ meta.directive.vue keyword.control.loop.for.vue
//       ^ meta.directive.vue punctuation.separator.key-value.vue
//        ^^^^^^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//        ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//         ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue
//         ^^^^ variable.other.readwrite.js
//              ^^ keyword.operator.js
//                 ^^^^^ variable.other.readwrite.js
//                      ^ string.quoted.double.vue punctuation.definition.string.end.vue
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
//   ^^^^ meta.directive.vue keyword.other.directive.vue
//       ^ meta.directive.vue punctuation.separator.vue
//        ^^^^^ meta.directive.parameter.vue entity.other.attribute-name.vue
//             ^ meta.directive.vue punctuation.separator.key-value.vue
//              ^^^^^^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//              ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//               ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                            ^ meta.string.vue string.quoted.double.vue punctuation.definition.string.end.vue

<div @event="doSomething()"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^ meta.directive.vue keyword.other.directive.vue
//         ^ meta.directive.vue punctuation.separator.key-value.vue
//          ^^^^^^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//          ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//           ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                        ^ meta.string.vue string.quoted.double.vue punctuation.definition.string.end.vue


<!--
 Dynamic Directive Arguments

 https://vuejs.org/guide/essentials/template-syntax.html#dynamic-arguments
 -->

<div v-on:[eventName]="doSomething()"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^^^^ meta.directive.vue keyword.other.directive.vue
//       ^ meta.directive.vue punctuation.separator.vue
//        ^^^^^^^^^^^ meta.directive.parameter.vue meta.interpolation.vue
//        ^ punctuation.section.interpolation.begin.vue
//         ^^^^^^^^^ source.js.embedded.vue variable.other.readwrite.js
//                  ^ punctuation.section.interpolation.end.vue
//                   ^ meta.directive.vue punctuation.separator.key-value.vue
//                    ^^^^^^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//                    ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//                     ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                                  ^ meta.string.vue string.quoted.double.vue punctuation.definition.string.end.vue

<div @[eventName]="doSomething()"></div>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
//   ^ meta.directive.vue keyword.other.directive.vue
//    ^^^^^^^^^^^ meta.directive.parameter.vue meta.interpolation.vue
//    ^ punctuation.section.interpolation.begin.vue
//     ^^^^^^^^^ source.js.embedded.vue variable.other.readwrite.js
//              ^ punctuation.section.interpolation.end.vue
//               ^ meta.directive.vue punctuation.separator.key-value.vue
//                ^^^^^^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//                ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//                 ^^^^^^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                              ^ meta.string.vue string.quoted.double.vue punctuation.definition.string.end.vue


<!--
 Event Modifiers

 https://vuejs.org/guide/essentials/event-handling.html#event-modifiers
 -->

<!-- the click event's propagation will be stopped -->
<a v-on:click.stop="doThis()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^^^^ meta.directive.vue keyword.other.directive.vue
//     ^ meta.directive.vue punctuation.separator.vue
//      ^^^^^ meta.directive.parameter.vue entity.other.attribute-name.vue
//           ^ meta.directive.modifiers.vue punctuation.separator.vue
//            ^^^^ meta.directive.modifiers.vue storage.modifier.vue
//                ^ meta.directive.vue punctuation.separator.key-value.vue
//                 ^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//                 ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//                  ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                          ^ string.quoted.double.vue punctuation.definition.string.end.vue

<!-- the click event's propagation will be stopped -->
<a @click.stop="doThis()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^ meta.directive.vue keyword.other.directive.vue
//  ^^^^^ meta.directive.parameter.vue entity.other.attribute-name.vue
//       ^ meta.directive.modifiers.vue punctuation.separator.vue
//        ^^^^ meta.directive.modifiers.vue storage.modifier.vue
//            ^ meta.directive.vue punctuation.separator.key-value.vue
//             ^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//             ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//              ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                      ^ string.quoted.double.vue punctuation.definition.string.end.vue

<!-- modifiers can be chained -->
<a @click.stop.prevent="doThat()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^ meta.directive.vue keyword.other.directive.vue
//  ^^^^^ meta.directive.parameter.vue entity.other.attribute-name.vue
//       ^ meta.directive.modifiers.vue punctuation.separator.vue
//        ^^^^ meta.directive.modifiers.vue storage.modifier.vue
//            ^ meta.directive.modifiers.vue punctuation.separator.vue
//             ^^^^^^^ meta.directive.modifiers.vue storage.modifier.vue
//                    ^ meta.directive.vue punctuation.separator.key-value.vue
//                     ^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//                     ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//                      ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                              ^ string.quoted.double.vue punctuation.definition.string.end.vue

<a v-on:click:outside.prevent="doThis()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^^^^ meta.directive.vue keyword.other.directive.vue
//     ^ meta.directive.vue  punctuation.separator.vue
//      ^^^^^^^^^^^^^ meta.directive.parameter.vue entity.other.attribute-name.vue
//           ^ - punctuation
//                   ^ meta.directive.modifiers.vue punctuation.separator.vue
//                    ^^^^^^^ meta.directive.modifiers.vue storage.modifier.vue
//                           ^ meta.directive.vue punctuation.separator.key-value.vue
//                            ^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//                            ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//                             ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                                     ^ string.quoted.double.vue punctuation.definition.string.end.vue

<a @click:outside.prevent="doThat()"></a>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag
// ^ meta.directive.vue keyword.other.directive.vue
//  ^^^^^^^^^^^^^ meta.directive.parameter.vue entity.other.attribute-name.vue
//       ^ - punctuation
//               ^ meta.directive.modifiers.vue punctuation.separator.vue
//                ^^^^^^^ meta.directive.modifiers.vue storage.modifier.vue
//                       ^ meta.directive.vue punctuation.separator.key-value.vue
//                        ^^^^^^^^^^ meta.directive.value.vue meta.string.vue
//                        ^ string.quoted.double.vue punctuation.definition.string.begin.vue
//                         ^^^^^^^^ meta.interpolation.vue source.js.embedded.vue meta.function-call
//                                 ^ string.quoted.double.vue punctuation.definition.string.end.vue

<!--
 Nested brackets and quotes
 -->

<div
    v-bind:[styles["name"]]='{
//  ^^^^^^ meta.directive.vue keyword.other.directive.vue
//        ^ meta.directive.vue punctuation.separator.vue
//         ^^^^^^^^^^^^^^^^ meta.directive.parameter.vue meta.interpolation.vue
//         ^ punctuation.section.interpolation.begin.vue
//          ^^^^^^ variable.other.readwrite.js
//                ^^^^^^^^ meta.brackets.js
//                ^ punctuation.section.brackets.begin.js
//                 ^^^^^^ meta.string.js string.quoted.double.js
//                       ^ punctuation.section.brackets.end.js
//                        ^ punctuation.section.interpolation.end.vue
//                         ^ meta.directive.vue punctuation.separator.key-value.vue
//                          ^ meta.directive.value.vue meta.string.vue string.quoted.single.vue punctuation.definition.string.begin.vue
//                           ^^ meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue meta.mapping.js
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
//^^^ meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue meta.mapping.js
//   ^ meta.directive.value.vue meta.string.vue string.quoted.single.vue punctuation.definition.string.end.vue

    <!--
    Other Vue Directives
     -->

    <p v-attrib="{'key': 'value'}">
//  ^^^ meta.tag - meta.directive
//     ^^^^^^^^^ meta.tag meta.directive.vue - meta.string
//              ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//               ^^^^^^^^^^^^^^^^ meta.tag meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue meta.mapping
//                               ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//                                ^ meta.tag - meta.directive
//                                 ^ - meta.tag

    <p v-attrib="i = 0">
//  ^^^ meta.tag - meta.directive
//     ^^^^^^^^^ meta.tag meta.directive.vue - meta.string
//              ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//               ^^^^^ meta.tag meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue
//                    ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//                     ^ meta.tag - meta.directive
//                      ^ - meta.tag

    <p v-attrib='i = 0'>
//  ^^^ meta.tag - meta.directive
//     ^^^^^^^^^ meta.tag meta.directive.vue - meta.string
//              ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//               ^^^^^ meta.tag meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue
//                    ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//                     ^ meta.tag - meta.directive
//                      ^ - meta.tag

    <p #handler="variable">
//  ^^^ meta.tag - meta.directive
//     ^ meta.tag meta.directive.vue keyword.other.directive.vue - meta.string
//      ^^^^^^^ meta.tag meta.directive.parameter.vue entity.other.attribute-name.vue - meta.string
//              ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//               ^^^^^^^^ meta.tag meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue
//                       ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//                        ^ meta.tag - meta.directive
//                         ^ - meta.tag

    <p #handler='variable'>
//  ^^^ meta.tag - meta.directive
//     ^ meta.tag meta.directive.vue keyword.other.directive.vue - meta.string
//      ^^^^^^^ meta.tag meta.directive.parameter.vue entity.other.attribute-name.vue - meta.string
//              ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//               ^^^^^^^^ meta.tag meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue
//                       ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//                        ^ meta.tag - meta.directive
//                         ^ - meta.tag

    <p :handler="expression">
//  ^^^ meta.tag - meta.directive
//     ^ meta.tag meta.directive.vue keyword.other.directive.vue - meta.string
//      ^^^^^^^ meta.tag meta.directive.parameter.vue entity.other.attribute-name.vue - meta.string
//              ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//               ^^^^^^^^^^ meta.tag meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue
//                         ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//                          ^ meta.tag - meta.directive
//                           ^ - meta.tag

    <p :handler='expression'>
//  ^^^ meta.tag - meta.directive
//     ^ meta.tag meta.directive.vue keyword.other.directive.vue - meta.string
//      ^^^^^^^ meta.tag meta.directive.parameter.vue entity.other.attribute-name.vue - meta.string
//              ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//               ^^^^^^^^^^ meta.tag meta.directive.value.vue meta.string.vue meta.interpolation.vue source.js.embedded.vue
//                         ^ meta.tag meta.directive.value.vue meta.string.vue - meta.interpolation
//                          ^ meta.tag - meta.directive
//                           ^ - meta.tag

    <template #[`content-${variable}`]>
//            ^ meta.tag.template.begin.html meta.directive.vue keyword.other.directive.vue
//             ^ meta.tag.template.begin.html meta.directive.parameter.vue meta.interpolation.vue punctuation.section.interpolation.begin.vue - source.js.embedded
//              ^^^^^^^^^^^^^^^^^^^^^ meta.tag.template.begin.html meta.directive.parameter.vue meta.interpolation.vue source.js.embedded.vue
//                                   ^ meta.tag.template.begin.html meta.directive.parameter.vue meta.interpolation.vue punctuation.section.interpolation.end.vue - source.js.embedded
//                                    ^ meta.tag.template.begin.html - meta.directive
//                                     ^ - meta.tag

    <template v-slot:[`content-${variable}`] >
//            ^^^^^^ meta.tag.template.begin.html meta.directive.vue keyword.other.directive.vue
//                  ^ meta.tag.template.begin.html meta.directive.vue punctuation.separator.vue
//                   ^ meta.tag.template.begin.html meta.directive.parameter.vue meta.interpolation.vue punctuation.section.interpolation.begin.vue - source.js.embedded
//                    ^^^^^^^^^^^^^^^^^^^^^ meta.tag.template.begin.html meta.directive.parameter.vue meta.interpolation.vue source.js.embedded.vue
//                                         ^ meta.tag.template.begin.html meta.directive.parameter.vue meta.interpolation.vue punctuation.section.interpolation.end.vue - source.js.embedded
//                                          ^ meta.tag.template.begin.html meta.directive.vue
//                                           ^ meta.tag.template.begin.html - meta.directive
//                                            ^ - meta.tag
