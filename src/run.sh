java -cp saxon9he.jar net.sf.saxon.Query -s:recipes.xml -o:result.xml recipes.xq
xmllint --format result.xml
