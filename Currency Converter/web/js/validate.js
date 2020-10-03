/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function validate(input)
{
    if(isNaN(input.value))
    {
        return false;
    }
    convert(document.getElementById('currency2').value,document.getElementById('currency1').value,document.getElementById('amount2').value);
    return true;
}
