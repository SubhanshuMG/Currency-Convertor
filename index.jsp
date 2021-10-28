<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet"  type="text/css" />
        <script src="js/ajax.js" type="text/javascript"></script>
        <script src="js/swap.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Currency Exchange Converter</title>
    </head>
    <body>
        <h1>Currency Exchange Converter</h1>
        <form action="Convert" >        
            <input  type="text" id="amount1" name="amount1" value="1" onkeyup="convert(document.getElementById('currency1').value,document.getElementById('currency2').value,document.getElementById('amount1'));"   />       
            <select name="currency1" id="currency1" onchange ="convert(document.getElementById('currency1').value,document.getElementById('currency2').value,document.getElementById('amount1'));">
                <option selected="" value="EUR">Euro - EUR</option>
                <option value="USD">United States Dollars - USD</option>
                <option value="GBP">United Kingdom Pounds - GBP</option>
                <option value="CAD">Canada Dollars - CAD</option>
                <option value="AUD">Australia Dollars - AUD</option>
                <option value="JPY">Japan Yen - JPY</option>
                <option value="INR">India Rupees - INR</option>
                <option value="NZD">New Zealand Dollars - NZD</option>
                <option value="CHF">Switzerland Francs - CHF</option>
                <option value="ZAR">South Africa Rand - ZAR</option>
                <option value="DZD">Algeria Dinars - DZD</option>
                <option value="USD">America (United States) Dollars - USD</option>
                <option value="ARS">Argentina Pesos - ARS</option>
                <option value="AUD">Australia Dollars - AUD</option>
                <option value="BHD">Bahrain Dinars - BHD</option>
                <option value="BRL">Brazil Reais - BRL</option>
                <option value="BGN">Bulgaria Leva - BGN</option>
                <option value="CAD">Canada Dollars - CAD</option>
                <option value="CLP">Chile Pesos - CLP</option>
                <option value="CNY">China Yuan Renminbi - CNY</option>
                <option value="CNY">RMB (China Yuan Renminbi) - CNY</option>
                <option value="COP">Colombia Pesos - COP</option>
                <option value="CRC">Costa Rica Colones - CRC</option>
                <option value="HRK">Croatia Kuna - HRK</option>
                <option value="CZK">Czech Republic Koruny - CZK</option>
                <option value="DKK">Denmark Kroner - DKK</option>
                <option value="DOP">Dominican Republic Pesos - DOP</option>
                <option value="EGP">Egypt Pounds - EGP</option>
                <option value="EEK">Estonia Krooni - EEK</option>
                <option value="EUR">Euro - EUR</option>
                <option value="FJD">Fiji Dollars - FJD</option>
                <option value="HKD">Hong Kong Dollars - HKD</option>
                <option value="HUF">Hungary Forint - HUF</option>
                <option value="ISK">Iceland Kronur - ISK</option>
                <option value="INR">India Rupees - INR</option>
                <option value="IDR">Indonesia Rupiahs - IDR</option>
                <option value="ILS">Israel New Shekels - ILS</option>
                <option value="JMD">Jamaica Dollars - JMD</option>
                <option value="JPY">Japan Yen - JPY</option>
                <option value="JOD">Jordan Dinars - JOD</option>
                <option value="KES">Kenya Shillings - KES</option>
                <option value="KRW">Korea (South) Won - KRW</option>
                <option value="KWD">Kuwait Dinars - KWD</option>
                <option value="LBP">Lebanon Pounds - LBP</option>
                <option value="MYR">Malaysia Ringgits - MYR</option>
                <option value="MUR">Mauritius Rupees - MUR</option>
                <option value="MXN">Mexico Pesos - MXN</option>
                <option value="MAD">Morocco Dirhams - MAD</option>
                <option value="NZD">New Zealand Dollars - NZD</option>
                <option value="NOK">Norway Kroner - NOK</option>
                <option value="OMR">Oman Rials - OMR</option>
                <option value="PKR">Pakistan Rupees - PKR</option>
                <option value="PEN">Peru Nuevos Soles - PEN</option>
                <option value="PHP">Philippines Pesos - PHP</option>
                <option value="PLN">Poland Zlotych - PLN</option>
                <option value="QAR">Qatar Riyals - QAR</option>
                <option value="RON">Romania New Lei - RON</option>
                <option value="RUB">Russia Rubles - RUB</option>
                <option value="SAR">Saudi Arabia Riyals - SAR</option>
                <option value="SGD">Singapore Dollars - SGD</option>
                <option value="SKK">Slovakia Koruny - SKK</option>
                <option value="ZAR">South Africa Rand - ZAR</option>
                <option value="KRW">South Korea Won - KRW</option>
                <option value="LKR">Sri Lanka Rupees - LKR</option>
                <option value="SEK">Sweden Kronor - SEK</option>
                <option value="CHF">Switzerland Francs - CHF</option>
                <option value="TWD">Taiwan New Dollars - TWD</option>
                <option value="THB">Thailand Baht - THB</option>
                <option value="TTD">Trinidad and Tobago Dollars - TTD</option>
                <option value="TND">Tunisia Dinars - TND</option>
                <option value="TRY">Turkey Lira - TRY</option>
                <option value="AED">United Arab Emirates Dirhams - AED</option>
                <option value="GBP">United Kingdom Pounds - GBP</option>
                <option value="USD">United States Dollars - USD</option>
                <option value="VEB">Venezuela Bolivares - VEB</option>
                <option value="VND">Vietnam Dong - VND</option>
                <option value="ZMK">Zambia Kwacha - ZMK</option>
            </select>

            =
            <input type="text" id="amount2" name="amount2" value="1" onkeyup="convert(document.getElementById('currency2').value,document.getElementById('currency1').value,document.getElementById('amount2'));"   />
            <select name="currency2" id="currency2" onchange ="convert(document.getElementById('currency2').value,document.getElementById('currency1').value,document.getElementById('amount2'));">
                <option selected="" value="EUR">Euro - EUR</option>
                <option value="USD">United States Dollars - USD</option>
                <option value="GBP">United Kingdom Pounds - GBP</option>
                <option value="CAD">Canada Dollars - CAD</option>
                <option value="AUD">Australia Dollars - AUD</option>
                <option value="JPY">Japan Yen - JPY</option>
                <option value="INR">India Rupees - INR</option>
                <option value="NZD">New Zealand Dollars - NZD</option>
                <option value="CHF">Switzerland Francs - CHF</option>
                <option value="ZAR">South Africa Rand - ZAR</option>
                <option value="DZD">Algeria Dinars - DZD</option>
                <option value="USD">America (United States) Dollars - USD</option>
                <option value="ARS">Argentina Pesos - ARS</option>
                <option value="AUD">Australia Dollars - AUD</option>
                <option value="BHD">Bahrain Dinars - BHD</option>
                <option value="BRL">Brazil Reais - BRL</option>
                <option value="BGN">Bulgaria Leva - BGN</option>
                <option value="CAD">Canada Dollars - CAD</option>
                <option value="CLP">Chile Pesos - CLP</option>
                <option value="CNY">China Yuan Renminbi - CNY</option>
                <option value="CNY">RMB (China Yuan Renminbi) - CNY</option>
                <option value="COP">Colombia Pesos - COP</option>
                <option value="CRC">Costa Rica Colones - CRC</option>
                <option value="HRK">Croatia Kuna - HRK</option>
                <option value="CZK">Czech Republic Koruny - CZK</option>
                <option value="DKK">Denmark Kroner - DKK</option>
                <option value="DOP">Dominican Republic Pesos - DOP</option>
                <option value="EGP">Egypt Pounds - EGP</option>
                <option value="EEK">Estonia Krooni - EEK</option>
                <option value="EUR">Euro - EUR</option>
                <option value="FJD">Fiji Dollars - FJD</option>
                <option value="HKD">Hong Kong Dollars - HKD</option>
                <option value="HUF">Hungary Forint - HUF</option>
                <option value="ISK">Iceland Kronur - ISK</option>
                <option value="INR">India Rupees - INR</option>
                <option value="IDR">Indonesia Rupiahs - IDR</option>
                <option value="ILS">Israel New Shekels - ILS</option>
                <option value="JMD">Jamaica Dollars - JMD</option>
                <option value="JPY">Japan Yen - JPY</option>
                <option value="JOD">Jordan Dinars - JOD</option>
                <option value="KES">Kenya Shillings - KES</option>
                <option value="KRW">Korea (South) Won - KRW</option>
                <option value="KWD">Kuwait Dinars - KWD</option>
                <option value="LBP">Lebanon Pounds - LBP</option>
                <option value="MYR">Malaysia Ringgits - MYR</option>
                <option value="MUR">Mauritius Rupees - MUR</option>
                <option value="MXN">Mexico Pesos - MXN</option>
                <option value="MAD">Morocco Dirhams - MAD</option>
                <option value="NZD">New Zealand Dollars - NZD</option>
                <option value="NOK">Norway Kroner - NOK</option>
                <option value="OMR">Oman Rials - OMR</option>
                <option value="PKR">Pakistan Rupees - PKR</option>
                <option value="PEN">Peru Nuevos Soles - PEN</option>
                <option value="PHP">Philippines Pesos - PHP</option>
                <option value="PLN">Poland Zlotych - PLN</option>
                <option value="QAR">Qatar Riyals - QAR</option>
                <option value="RON">Romania New Lei - RON</option>
                <option value="RUB">Russia Rubles - RUB</option>
                <option value="SAR">Saudi Arabia Riyals - SAR</option>
                <option value="SGD">Singapore Dollars - SGD</option>
                <option value="SKK">Slovakia Koruny - SKK</option>
                <option value="ZAR">South Africa Rand - ZAR</option>
                <option value="KRW">South Korea Won - KRW</option>
                <option value="LKR">Sri Lanka Rupees - LKR</option>
                <option value="SEK">Sweden Kronor - SEK</option>
                <option value="CHF">Switzerland Francs - CHF</option>
                <option value="TWD">Taiwan New Dollars - TWD</option>
                <option value="THB">Thailand Baht - THB</option>
                <option value="TTD">Trinidad and Tobago Dollars - TTD</option>
                <option value="TND">Tunisia Dinars - TND</option>
                <option value="TRY">Turkey Lira - TRY</option>
                <option value="AED">United Arab Emirates Dirhams - AED</option>
                <option value="GBP">United Kingdom Pounds - GBP</option>
                <option value="USD">United States Dollars - USD</option>
                <option value="VEB">Venezuela Bolivares - VEB</option>
                <option value="VND">Vietnam Dong - VND</option>
                <option value="ZMK">Zambia Kwacha - ZMK</option>
            </select>
            <div id="swap">
                <input type="button" value="swap" onclick="swapElem(document.getElementById('currency1'),document.getElementById('currency2'))" />
            </div>
        </form>
    </body>
</html>
