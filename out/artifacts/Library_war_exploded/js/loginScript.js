    var xmlHttp=false;
    function createXMLHttpRequest()
    {
        if (window.ActiveXObject)  //在IE浏览器中创建XMLHttpRequest对象
        {
            try{
                xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch(e){
                try{
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch(ee){
                    xmlHttp=false;
                }
            }
        }
        else if (window.XMLHttpRequest) //在非IE浏览器中创建XMLHttpRequest对象
        {
            try{
                xmlHttp = new XMLHttpRequest();
            }
            catch(e){
                xmlHttp=false;
            }
        }
    }
    function logincheck(){
        var usernameinput = document.getElementById("usernameinput").value;
		var passwordinput = document.getElementById("passwordinput").value;
        createXMLHttpRequest();   //调用创建XMLHttpRequest对象的方法
        xmlHttp.onreadystatechange=logincheckResult;   //设置回调函数
        var url="LoginAction?action=login&username=" + usernameinput + "&password=" + passwordinput;
        xmlHttp.open("POST",url,true);      //向服务器端发送请求
        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf8");
        xmlHttp.send(null);
    }
	
    function logincheckResult(){
		var usernameinput = document.getElementById("usernameinput").value;
		var passwordinput = document.getElementById("passwordinput").value;
        if (xmlHttp.readyState==4 && xmlHttp.status==200){
            var data= xmlHttp.responseText;
			document.getElementById("checkinfo").innerHTML = "";
            if(data == "false"){
				document.getElementById("checkinfo").innerHTML = "UIDまたはパスワードの入力間違い!";
            }
			if (usernameinput == ""){
				document.getElementById("checkinfo").innerHTML = "UIDを入力してください!";
			}
			if (passwordinput == ""){
				document.getElementById("checkinfo").innerHTML = "パスワードを入力してください!";
			}
			if (usernameinput == "" && passwordinput == ""){
				document.getElementById("checkinfo").innerHTML = "UIDとパスワードを両方入力してください!";
			}
			if(document.getElementById("checkinfo").innerHTML == ""){
				window.location.href="main.jsp"; 
			}
        }
    }