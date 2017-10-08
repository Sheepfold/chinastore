	    $(document).ready(function(){
	    	navigationBarGenerate();
	    	contentBlockGenerate("01");
	    	$('#search_block').empty();
	    });
	    
	    function searchBlockProduce(){
	    	getAllStores4Search();
	    	var searchResultArr = new Array();
	    	searchResultArr = searchStores($("#inputText").val());
	    	var htmlOutString = "<ul><li><div class='icon_line'><div class='icon_line_container'>";
	    	var lineIndex = 0;
	    	if($("#inputText").val() != ""){
		    	for( var i = 0; i < searchResultArr.length; i += 4){
		    		lineIndex++;
		    		htmlOutString += "<div class='search_block_icon_cell'><a href='" + searchResultArr[ i + 2 ] + "'>";
		    		htmlOutString += "<div class='content_icon_cell' style='background:url(" + searchResultArr[ i + 3 ] + ") no-repeat center 0px; background-size:50%;'>";
		    		htmlOutString += "<div class='content_icon_cell_txt'>" + searchResultArr[ i ] + "</div></div></a></div>";
	            	if( lineIndex%4 == 0 ){
	            		htmlOutString += "</div></div></li><li><div class='icon_line'><div class='icon_line_container'>";
		    		}
		    	}
		    	htmlOutString += "</div></div></li></ul>";
		    	
		    	var htmlOut = $(htmlOutString);
		    	
		    	$('#menu3').empty();
		    	$('#content_1').empty();
		    	$('#search_block').empty();
		    	htmlOut.appendTo("#search_block");
	    	}else{
	    		$('#menu3').empty();
	    		$('#content_1').empty();
	    		$('#search_block').empty();
		    	navigationBarGenerate();
		    	contentBlockGenerate("01");
	    	}
	    }
	    
	    function searchStores(keyWord){
	    	var storeList = new Array();
	    	var resultList = new Array();
	    	storeList = store.get("allStores").split(",");
	    	for(var i = 0; i < storeList.length; i+=4){
	    		if(storeList[i].match(keyWord) != null){
	    			resultList.push(storeList[i]);
	    			resultList.push(storeList[i+1]);
	    			resultList.push(storeList[i+2]);
	    			resultList.push(storeList[i+3]);
	    		}
	    	}
	    	return resultList;
	    }
	    
	    function getAllStores4Search(){
	    	var storeArr = new Array();
	    	$.ajax({
                type:"get", 
                url:"data/store.xml",
                contentType:"text/xml",
                dataType:"xml",
                async: false,
                timeout:2000,
                cache:false,
                success:function(xml){
                    $(xml).find("ChinaStore").each(function(i){
                    	var arr_child = new Array();
                    	arr_child.push($(this).children("Name").text());
                    	arr_child.push($(this).children("ID").text());
                    	arr_child.push($(this).children("NetworkURL").text());
                    	arr_child.push($(this).children("IconLocalURL").text());
                    	storeArr.push(arr_child);
                    });
                    store.set("allStores", storeArr);
                }
            });
	    }
	    
	    function navigationBarGenerate(){
            $.ajax({
                type:"get", 
                url:"data/storeclass.xml",
                contentType:"text/xml",
                dataType:"xml",
                async: false,
                timeout:2000,
                cache:false,
                success:function(xml){
                    var htmlOut = $("<ul>");
                    $(xml).find("ChinaStoreClass").each(function(i){
                        var name = $(this).children("Name");
                        var classId = $(this).children("ID").text();
                        htmlOut.append("<li><a href='#' onmousedown=\"contentBlockGenerate('"+classId+"');\">"+ name.text() + "</a></li>");
                    });
                    htmlOut.append("</ul>");
                    htmlOut.appendTo("#menu3");
                }
            });
	    }
	    
	    function contentBlockGenerate(classId){
	    	var htmlOut = $("<ul>");
    		getChildClassByParentClassID(classId);
    		var arr = store.get("childClassArray").split(",");
    		var item_length = arr.length/2;
    		var line_cell_index = 0;
	    	if(arr[0] != ""){
		    	for( var i = 0; i < item_length; i++ ){
		    		htmlOut.append("<li><a href='#' id='current'>" + arr[ 2*i + 1] + "</a></li>");
		    		line_cell_index = 0;
		    		getStoresByClassID(arr[2*i]);
		    		htmlOut.append(store.get("storesHtmlOut"));
		    	}
	    	}else{
	    		getStoresByClassID(classId);
	    		htmlOut.append(store.get("storesHtmlOut"));
	    	}
	    	$('#content_1').empty();
	    	htmlOut.appendTo("#content_1");
	    } 
	    
	    function getStoresByClassID(classId){
	    	var htmlOut = "<li><div class='icon_line'><div class='icon_line_container'>";
            $.ajax({
                type:"get",
                url:"data/store.xml",
                contentType:"text/xml",
                dataType:"xml",
                async: false,
                timeout:2000,
                cache:false,
                success:function(xml){
                	var i = 0;
                    $(xml).find("ChinaStore").each(function(){
                        if(classId.length == 4 && $(this).children("ChildClassID").text() == classId){
                        	htmlOut += "<div class='icon_cell'><a href='"
                        			+ $(this).children("NetworkURL").text()
                        			+ "'><div class='content_icon_cell' style='background:url(" 
                        			+ $(this).children("IconLocalURL").text()
                        			+ ") no-repeat center 0px; background-size:50%;' ><div class='content_icon_cell_txt'>"
                        			+ $(this).children("Name").text()
                        			+ "</div></div></a></div>" ;
                        	i++;
                        	if( i%3 == 0 ){
                        		i = 0;
        		    			htmlOut += "</div></div></li><li><div class='icon_line'><div class='icon_line_container'>";
        		    		}
                        }
                    });
                	htmlOut += "</div></div></li></ul>";
                	store.set("storesHtmlOut", htmlOut);
                }
            });
            
	    } 
	    
	    function getChildClassByParentClassID(classId){
	    	var arr = new Array();
            $.ajax({
            	type:"get",
                url:"data/storechildclass.xml",
                contentType:"text/xml",
                dataType:"xml",
                async: false,
                timeout:2000,
                cache:false,
                success:function(xml){
                	$(xml).find("ChildClass").each(function(i){
						if(classId == $(this).children("ParentClassID").text()){
							var arr_child = new Array();
							arr_child.push($(this).children("ChildClassID").text());
							arr_child.push($(this).children("ChildClassIDName").text());
							arr.push(arr_child);
						}
                    });
                	store.set("childClassArray", arr);
                }
            });
	    } 