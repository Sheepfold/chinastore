<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
    </head>
    <body>
        <input type="button" id="getXml" value="getXML"/>
        <div id="load"></div>
    </body>
    
    <script type="text/javascript">
        $(function(){
            $("#getXml").click(function(){
                $.ajax({
                    type:"get",
                    url:"data/storeclass.xml",
                    contentType:"text/xml",
                    dataType:"xml",
                    timeout:2000,
                    cache:false,
                    success:function(xml){
                        var frag = $("<ul/>");
                        $(xml).find("ChinaStoreClass").each(function(i){
                            var name = $(this).children("Name");
                            var child_class_flg = $(this).children("ChildClassFlag");
                            if("N" == child_class_flg.text())
                            	frag.append(" no child.");
                            frag.append("<li>" + name.text() + "</li>");
                            
                        });
                        frag.appendTo("#load");
                    }
                });
            })
        })
    </script>
</html>