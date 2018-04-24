xquery version "1.0";
declare namespace r="http://recipes.org";
declare default element namespace "http://recipes.org";
let $ingredients := doc("ingredients.xml")
let $recipes := doc("recipes.xml")
return
<r:recipes-with-ingredients>
{$ingredients}
{
for $r in $recipes/collection/recipe
where every $i in $r/ingredient
  satisfies $i/@name = $ingredients//ingredient/@name
return $r
}
</r:recipes-with-ingredients>
(:
 Task 4: XQuery
 Complete this query so that it:

-- firstly copies the <ingredients> from the "ingredients.xml" document;
-- then insert certain recipes from "recipes.xml" source file so that

 The recipes that contain only ingredients listed in the document "ingredients.xml".
 The amount of the ingredient does not matter.

 You can use the "every ... in ... satisfies" expression to select
 the recipes containing the ingredients. Note that if you test
 whether a node $a is contained in a node set $b, it is enough
 to just write $a = $b.

 You can run and thus test your query by running "run.sh"
 (Linux) and similarly "run.cmd" under Windows.
 We use Saxon as the XQuery processor which is provided in the .jar file.

 The expected result is in "expected_result.xml" file.
:)
