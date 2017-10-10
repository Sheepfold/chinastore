	    $(document).ready(function(){
	    	getAllStores();
	    	getAllClasses();
	    	getAllChildClasses();
	    	initAllBlock();
	    });
	    
	    function backBGColor4NavigationBar(classId){
	    	var classesList = new Array();
	    	classList = store.get("allClasses").split(",");
	    	for(var i = 0; i < classList.length; i += 2){
	    		if(classList[i] != classId){
	    			var name = "nav" + classList[i];
	    			document.getElementById(name).style.backgroundColor = "#fff";
	    		}
	    	}
	    }
	    
	    function createNavigationBar(){
	    	var classesList = new Array();
	    	var htmlOut = $("<ul>");
	    	classList = store.get("allClasses").split(",");
	    	for(var i = 0; i < classList.length; i += 2){
	    		 htmlOut.append("<li><a href='#' id='nav" + classList[i] + "' onmousedown=\"creatContentBlock('" + classList[i] + "');backBGColor4NavigationBar('" + classList[i] + "');\">"+ classList[ i + 1 ] + "</a></li>");
	    	}
	    	htmlOut.append("</ul>");
            htmlOut.appendTo("#menu3");
	    }
	    
	    function creatContentBlock(classId){
	    	var childClassesList = new Array();
	    	var htmlOut = $("<ul>");
	    	childClassesList = store.get("allChildClasses").split(",");
	    	for(var i = 0; i < childClassesList.length; i += 2){
	    		if(childClassesList[i].substr(0, 2) === classId){
	    			htmlOut.append("<li><a href='#' id='current'>" + childClassesList[i + 1] + "</a></li>");
	    			htmlOut.append(creatContentLine(childClassesList[i]));
	    		}
	    	}
	    	$('#content_1').empty();
	    	htmlOut.appendTo("#content_1");
	    }
	    
	    function creatContentLine(childClassId){
	    	var storesList = new Array();
	    	var htmlOutString = "<li><div class='icon_line'><div class='icon_line_container'>";
	    	childClassesList = store.get("allStores").split(",");
	    	var lineIndex = 0;
	    	for(var i = 0; i < childClassesList.length; i += 5){
	    		if(childClassesList[ i + 4 ] === childClassId){
	    			lineIndex++;
	    			htmlOutString += "<div class='icon_cell'><a href='" + childClassesList[ i + 2 ]
            			+ "'><div class='content_icon_cell' style='background:url(" + childClassesList[ i + 3 ]
            			+ ") no-repeat center 0px; background-size:50%;' ><div class='content_icon_cell_txt'>" + childClassesList[ i ]
            			+ "</div></div></a></div>" ;
	    			if( lineIndex%3 == 0 ){
	            		htmlOutString += "</div></div></li><li><div class='icon_line'><div class='icon_line_container'>";
		    		}
	    		}
	    	}
	    	htmlOutString += "</div></div></li></ul>";
	    	return htmlOutString;
	    }
	    
	    function searchBlockProduce(){
	    	var searchResultArr = new Array();
	    	searchResultArr = searchStores($("#inputText").val());
	    	var htmlOutString = "<ul><li><div class='icon_line'><div class='icon_line_container'>";
	    	var lineIndex = 0;
	    	if($("#inputText").val() != ""){
		    	for( var i = 0; i < searchResultArr.length; i += 5){
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
	    		initAllBlock();
	    	}
	    }
	    
	    function searchStores(keyWord){
	    	var storeList = new Array();
	    	var resultList = new Array();
	    	storeList = store.get("allStores").split(",");
	    	for(var i = 0; i < storeList.length; i+=5){
	    		if(storeList[i].match(keyWord) != null){
	    			resultList.push(storeList[i]);
	    			resultList.push(storeList[i+1]);
	    			resultList.push(storeList[i+2]);
	    			resultList.push(storeList[i+3]);
	    			resultList.push(storeList[i+4]);
	    		}
	    	}
	    	return resultList;
	    } 
	    
	    
	    /*数据初试化函数*/
	    function initAllBlock(){
	    	createNavigationBar();
	    	creatContentBlock("01");
	    }
	    
	    /*获取所有xml数据*/
	    function getAllChildClasses(){
	    	var storeArr = new Array();
	    	$.ajax({
                type:"get", 
                url:"data/storechildclass.xml",
                contentType:"text/xml",
                dataType:"xml",
                async: false,
                timeout:1000,
                cache: false,
                success:function(xml){
                    $(xml).find("ChildClass").each(function(i){
                    	var arr_child = new Array();
                    	arr_child.push($(this).children("ChildClassID").text());
                    	arr_child.push($(this).children("ChildClassIDName").text());
                    	storeArr.push(arr_child);
                    });
                    store.set("allChildClasses", storeArr);
                },
                complete: function (XHR, TS) { 
                    XHR = null 
                }
            });
	    }
	    
	    function getAllClasses(){
	    	var storeArr = new Array();
	    	$.ajax({
                type:"get", 
                url:"data/storeclass.xml",
                contentType:"text/xml",
                dataType:"xml",
                async: false,
                timeout:1000,
                cache: false,
                success:function(xml){
                    $(xml).find("ChinaStoreClass").each(function(i){
                    	var arr_child = new Array();
                    	arr_child.push($(this).children("ID").text());
                    	arr_child.push($(this).children("Name").text());
                    	storeArr.push(arr_child);
                    });
                    store.set("allClasses", storeArr);
                },
                complete: function (XHR, TS) { 
                    XHR = null 
                }
            });
	    }
	    
	    function getAllStores(){
	    	var storeArr = new Array();
	    	$.ajax({
                type:"get", 
                url:"data/store.xml",
                contentType:"text/xml",
                dataType:"xml",
                async: false,
                timeout:1000,
                cache: false,
                success:function(xml){
                    $(xml).find("ChinaStore").each(function(i){
                    	var arr_child = new Array();
                    	arr_child.push($(this).children("Name").text());
                    	arr_child.push($(this).children("ID").text());
                    	arr_child.push($(this).children("NetworkURL").text());
                    	arr_child.push($(this).children("IconLocalURL").text());
                    	arr_child.push($(this).children("ChildClassID").text());
                    	storeArr.push(arr_child);
                    });
                    store.set("allStores", storeArr);
                },
                complete: function (XHR, TS) { 
                    XHR = null 
                }
            });
	    }