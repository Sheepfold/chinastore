<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
<title>Index</title>
<style type="text/css">
* {
	margin: 0;
    padding: 0;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
body, hr, p, blockquote, dl, dt, dd, ol, pre, form, fieldset, legend, button, input, textarea, th, td {
    margin: 0;
    padding: 0;
}
body {
    color: #000;
    font-family: Microsoft YaHei;
    background: #FFF;
	margin:0 auto;
    padding:0;
	height: 100%;
}
html, body {
    background-color: #f2f2f2;
    color: #3d4245;
    font-size: 14px;
    -webkit-text-size-adjust: none;
}
.top-bar-c {
    -webkit-box-flex: 1;
    margin: 0 8px;
}
.top-bar-btn {
    display: none;
    height: 30px;
    line-height: 30px;
    padding: 0 20px;
    font-size: 12px;
    color: #333;
}
.s-input-select {
    display: -webkit-box;
    height: 32px;
    background: #fff;
    -webkit-border-radius: 4px;
}
.top-bar-w {
    width: 100%;
    color: #212121;
    height: 32px;
    line-height: 32px;
    padding: 6px 0;
    display: -webkit-box;
    position: relative;
    border-bottom: 1px solid #dbdbdb;
}
.top-bar.on {
    background-color: #fff;
}
.top-bar {
    width: 100%;
    background: #f6f6f6;
    z-index: 101;
}
.s-input-frame {
    -webkit-box-flex: 1;
    width: 100%;
    padding-right: 10px;
    line-height: 28px;
}
.s-input-frame .icons-search {
    display: block;
    border: none;
    text-indent: -999px;
    position: relative;
    top: 7px;
	background-color: transparent;
}
.icons-search {
    background-position: -3px -372px;
    width: 18px;
    height: 18px;
}

#tbh5v0 {
    color: #3d4245;
}
.s-input-frame .c-form-suggest {
    display: -webkit-box;
}
s-input-frame {
    -webkit-box-flex: 1;
    width: 100%;
    padding-right: 10px;
    line-height: 28px;
}
.s-input-frame .s-form-search {
    -webkit-box-flex: 1;
}
.s-input-frame .s-form-search .J_autocomplete {
    border: none;
    background: none;
    width: 100%;
    height: 26px;
    font-size: 14px;
}
.s-input-frame .s-form-search button {
    top: 1px;
    right: 20px;
    width: 44px;
    height: 30px;
    position: absolute;
    border: 0;
    background-color: transparent;
    text-align: center;
    display: none;
}
.s-input-frame .c-form-btn {
    width: 30px;
    height: 30px;
    margin-left: 10px;
}
input, select, textarea {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    -webkit-appearance: none;
    border: 0;
    border-radius: 0;
}
input, img {
    vertical-align: middle;
}
input[type="search" i] {
    -webkit-appearance: searchfield;
    box-sizing: border-box;
}
input {

    -webkit-appearance: textfield;
    background-color: white;
    -webkit-rtl-ordering: logical;
    user-select: text;
    cursor: auto;
    padding: 1px;
    border: 0;
}
input[type=search]::-ms-check{
	display: none;
}

input, textarea, select, button {
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    margin: 0em;
    font: 13.3333px Arial;
}
input, textarea, select, button, meter, progress {
    -webkit-writing-mode: horizontal-tb;
}
input[type="button" i], input[type="submit" i], input[type="reset" i], input[type="file" i]::-webkit-file-upload-button, button {
    padding: 1px 6px;
}
input[type="button" i], input[type="submit" i], input[type="reset" i], input[type="file" i]::-webkit-file-upload-button, button {
    align-items: flex-start;
    text-align: center;
    cursor: default;
    color: buttontext;
    background-color: buttonface;
    box-sizing: border-box;
    padding: 2px 6px 3px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    border-image: initial;
}
input, textarea, select, button {
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    margin: 0em;
    font: 13.3333px Arial;
}
input, textarea, select, button, meter, progress {
    -webkit-writing-mode: horizontal-tb;
}
button {
    -webkit-appearance: button;
}
.s-input-frame .s-form-search button span {
    margin: 0 auto;
    width: 14px;
    height: 14px;
    display: block;
}
.s-input-frame .s-form-search button {
    top: 1px;
    right: 20px;
    width: 44px;
    height: 30px;
    position: absolute;
    border: 0;
    background-color: transparent;
    text-align: center;
    display: none;
}
input, textarea, select, button, meter, progress {
    -webkit-writing-mode: horizontal-tb;
}
input[type="button" i], input[type="submit" i], input[type="reset" i], input[type="file" i]::-webkit-file-upload-button, button {
    align-items: flex-start;
    text-align: center;
    cursor: default;
    color: buttontext;
    background-color: buttonface;
    box-sizing: border-box;
    padding: 2px 6px 3px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    border-image: initial;
}
input, textarea, select, button {
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    margin: 0em;
    font: 13.3333px Arial;
}
.s-input-frame .s-form-search button span:after {
    width: 14px;
    height: 14px;
    background-repeat: no-repeat;
    background-image: url(images/search.jpg);
    -webkit-background-size: 14px 14px;
    background-position: center center;
    display: block;
    content: "";
}
element.style {
    transform-origin: 0px 0px 0px;
    opacity: 1;
    transform: scale(1, 1);
}

#back2APP {
	margin: 0px 0px 5px 10px;
    width: 20px;
    height: 20px;
}
#search {
	background: url(images/search.png);
	background-repeat: no-repeat;
}
#menu3 {
width: 25%;
float:left;
position: fixed;
top: 45px;
}

#menu3 ul
{
width: 100%;
font-family: SimYou;
list-style-type: circle;
list-style-position:inside;
background-color:#f2f2f2;
text-align:center;
margin:0;
padding:0;
}
#menu3 li
{
display: inline;
/* for IE5 and IE6 */
}

#menu3 a
{
color:#6896cc;
align:center;
font-family: 仿宋;
font-weight: bold;
font-color:#6896cc;
text-decoration: none;
padding:20px;
margin-bottom:2px;
background-color:#fff;
display: block;
font-size:16px;
}

#menu3 a:visited
{
background:linear-gradient(270deg, #f2f2f2 97%, #3170b9 3%);color:#6896cc;
}

#menu3 a:hover
{
background:linear-gradient(270deg, #f2f2f2 97%, #3170b9 3%);color:#6896cc;
}


/* Menu 3 ends here */


/* Menu 4 starts here */
.menu4 {
margin-top: 45px;
width: 74.5%;
text-align:center;
float:right;
background-color: #fff;
}

.menu4 ul
{
width: 100%;
text-align:center;
font-family: Arial, Helvetica, sans-serif;
list-style-type:none;
margin:0;
padding:0;
}
.menu4 li
{
display: inline;
/* for IE5 and IE6 */
margin:0px 0px 2px 0px;
}

.menu4 a
{
color: #000;
text-decoration: none;
font-size: 15px;
display: block;
padding: 3px;
background-color: #fff;
margin:0;
}

.menu4 a:link
{
text-decoration: none;
}

.menu4 li a#current
{
font-family: 黑体;
color: #3170b9;
font-weight: bold;
padding: 10px;
border: 1px solid #f2f2f2;
background: #f2f2f2 ;
}
/* Menu 4 ends here */

.content_icon_cell {
	width: 100%;
	height: 100%;
	font-weight: normal;
	text-align: center;
	margin: 0;
}
.content_icon_cell_txt {
	width: 100%;
	padding-top: 60%;
	font-size: 15px;
	bottom:0px;
	font-family: Pmingliu;
	font-weight: bold;
}
.icon_cell a {
	width: 100%;
	color:black;
	text-decoration: none;
}
.icon_cell {
	width: 33%;
	float: left;
	margin: 0;
}
.icon_line_container {
	width: 100%;
	margin: 10px 0 10px 0;
	overflow:hidden;
	display:inline-block;
}
.icon_line {
	width: 100%;
	text-align:center;
}

#inputText {
 left: 50%;
 top: 50%;
height:32px;
margin-left:0px;
outline:none;
}
#search_block {
width: 100%;
text-align:center;
float:left;
background-color: #fff;
}

#search_block ul
{
width: 100%;
text-align:center;
font-family: Arial, Helvetica, sans-serif;
list-style-type:none;
margin:0;
padding:0;
}
#search_block li
{
display: inline;
/* for IE5 and IE6 */
margin:0px 0px 2px 0px;
}

#search_block a
{
color: #000;
text-decoration: none;
font-size: 15px;
display: block;
padding: 3px;
background-color: #fff;
margin:0;
}

#search_block a:link
{
text-decoration: none;
}

.search_block_icon_cell {
	width: 25%;
	float: left;
	margin: 0;
}

</style>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript" src="js/store.js" ></script>
    <script type="text/javascript" >
	    $(document).ready(function(){
	    	navigationBarGenerate();
	    	contentBlockGenerate("01");
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
                        htmlOut.append("<li><a href='#' onClick=\"contentBlockGenerate('"+classId+"');\">"+ name.text() + "</a></li>");
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
	    	if(arr[0] != ""){
		    	for( var i = 0; i < item_length; i++ ){
		    		htmlOut.append("<li><a href='#' id='current'>" + arr[ 2*i + 1] + "</a></li>");
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
                    $(xml).find("ChinaStore").each(function(i){
                        if(classId.length == 4 && $(this).children("ChildClassID").text() == classId){
                        	htmlOut += "<div class='icon_cell'><a href='"
                        			+ $(this).children("NetworkURL").text()
                        			+ "'><div class='content_icon_cell' style='background:url(" 
                        			+ $(this).children("IconLocalURL").text()
                        			+ ") no-repeat center 0px; background-size:50%;' ><div class='content_icon_cell_txt'>"
                        			+ $(this).children("Name").text() 
                        			+ "</div></div></a></div>" ;
                        			
                        	i++;
                        	if( i%3 == 0 && i != 0 ){
        		    			htmlOut += "</div></div></li><li><div class='icon_line'><div class='icon_line_container'>";
        		    		}
                        }
                    });
                    if( i%3 == 2 ){
                    	store.set("storesHtmlOut", htmlOut.substring(0,htmlOut.length - 56));
                    }else{
                    	for(var j = 0; j <= 3 - (j % 3); j++){
                    		htmlOut += "<div class='icon_cell'><a href='#' style='display: none'>"
        		    				+ "<div class='content_icon_cell' style='background:url() no-repeat center 0px; background-size:50%;' >"
        		    				+ "<div class='content_icon_cell_txt'></div></div></a></div>";
                    	}
                    	htmlOut += "</div></div></li></ul>";
                    	store.set("storesHtmlOut", htmlOut);
                    }
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
	    
    </script>
</head>

<body>
	<div id="tbh5v0" class="mytaobao"><div class="toolbar">
		<header class="top-bar" id="J_Header"  style="position: fixed;">
			<div class="top-bar-w">
				<a href="#"><img id=back2APP src="images/_back1.png"/></a>
				<div class="top-bar-c">
					<div class="s-input-select">
						<div class="s-input-frame">
							<div class="c-form-suggest" id="J_Search">
								<div class="c-form-btn">
									<input type="button" name="search" class="icons-search" id="search" onclick="searchBlockProduce();">
								</div>
								<div class="s-form-search search-form">
									<input id="inputText" type="search" class="J_autocomplete" autocomplete="off" value="" placeholder="搜索" onkeyup="searchBlockProduce();">
								</div>
							</div>
						</div>
					</div>
				</div>				
			</div>
		</header>
	</div>
</div>
<div id="menu3"></div>
<div class="menu4" id="content_1"></div> 
<div id="search_block"></div>
</body>
</html>