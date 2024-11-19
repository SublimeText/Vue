## SYNTAX TEST reindent-unchanged "Vue Component.sublime-syntax"

<!-------------------------------------
 Indentation tests for script tags
-------------------------------------->

<!-- this comment's
     indentation should
     be unchanged
-->
<script>
    var i = 0;
    function foo() {
        return i;
    }
</script>
<!-- this comment's
indentation should
be unchanged -->
<script>
    <!--
    var i = 0;
    function foo() {
        return i;
    }
    -->
</script>
<script> <!--
    var i = 0;
    function foo() {
        return i;
    }
--> </script>


<!-------------------------------------
 Indentation tests for style tags
-------------------------------------->

<style>
    p {
        font-family: Helvetica;
    }
</style>
<style>
    <!--
    p {
        font-family: Helvetica;
    }
    -->
</style>
<style> <!--
    p {
        font-family: Helvetica;
    }
--> </style>


<!-------------------------------------
 Indentation tests for template tags
-------------------------------------->

<template>
    mustache content
</template>

<template> <!--
    mustache content
--> </template>

<template>
    <!--
    mustache content
    -->
</template>


<template lang="jade">
    jade content
</template>

<template lang="jade"> <!--
    jade content
--> </template>

<template lang="jade">
    <!--
    jade content
    -->
</template>


<template lang="pug">
    pug content
</template>

<template lang="pug"> <!--
    pug content
--> </template>

<template lang="pug">
    <!--
    pug content
    -->
</template>


<!-------------------------------------
 Indentation tests for html tags
-------------------------------------->

<template>
    <body>
        <div class="main">
            <span class="something">Blah</span>
            <span class="something">
                Foobar
            </span>
        </div>

        <script type="text/javascript" src="/some_script.js"></script>

        <script type="text/json">
            {
                "dict": {
                    "list": [
                        "value"
                    ]
                }
            }
        </script>

        <!-- Curly braces -->
        foo {
            bar { <!-- comment -->
                baz
            }
        }
        text
        { <p></p> }
        text
        {{template}}
        text

    </body>
</template>
