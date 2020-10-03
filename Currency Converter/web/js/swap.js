/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function swapElem(from,to)
{
    var temp;
    temp = from.value;
    from.value = to.value;
    to.value = temp;
    
    temp = document.getElementById("amount1").value;
    document.getElementById("amount1").value = document.getElementById("amount2").value;
    document.getElementById("amount2").value = temp;
}
