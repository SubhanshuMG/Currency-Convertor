/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


var req;
var where;
function convert(from,to,amount) {
    
   var url = "/CurrencyExchangeV3/Convert?from="+from+"&to="+to+"&amount="+amount.value;
   where = amount;
   if (typeof XMLHttpRequest != "undefined") {
       req = new XMLHttpRequest();
   } else if (window.ActiveXObject) {
       req = new ActiveXObject("Microsoft.XMLHTTP");
   }
   req.open("GET", url, true);
   req.onreadystatechange = callback;
   req.send(null);
}

function callback() {
    if (req.readyState == 4) {
        if (req.status == 200) {
            if(where != document.getElementById("amount1"))
            {
                document.getElementById("amount1").value = req.responseText;
            }
            else
            {
                document.getElementById("amount2").value = req.responseText;
            }
            
        }
    }
}