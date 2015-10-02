namespace CurrencyConverter
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.ddl_CFrom = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.ddl_CTo = new System.Windows.Forms.ComboBox();
            this.LBL_Result = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btn_Convert = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // ddl_CFrom
            // 
            this.ddl_CFrom.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.RecentlyUsedList;
            this.ddl_CFrom.FormattingEnabled = true;
            this.ddl_CFrom.Items.AddRange(new object[] {
            "AFA-Afghanistan Afghani",
            "ALL-Albanian Lek",
            "DZD-Algerian Dinar",
            "ARS-Argentine Peso",
            "AWG-Aruba Florin",
            "AUD-Australian Dollar",
            "BSD-Bahamian Dollar",
            "BHD-Bahraini Dinar",
            "BDT-Bangladesh Taka",
            "BBD-Barbados Dollar",
            "BZD-Belize Dollar",
            "BMD-Bermuda Dollar",
            "BTN-Bhutan Ngultrum",
            "BOB-Bolivian Boliviano",
            "BWP-Botswana Pula",
            "BRL-Brazilian Real",
            "GBP-British Pound",
            "BND-Brunei Dollar",
            "BIF-Burundi Franc",
            "XOF-CFA Franc (BCEAO)",
            "XAF-CFA Franc (BEAC)",
            "KHR-Cambodia Riel",
            "CAD-Canadian Dollar",
            "CVE-Cape Verde Escudo",
            "KYD-Cayman Islands Dollar",
            "CLP-Chilean Peso",
            "CNY-Chinese Yuan",
            "COP-Colombian Peso",
            "KMF-Comoros Franc",
            "CRC-Costa Rica Colon",
            "HRK-Croatian Kuna",
            "CUP-Cuban Peso",
            "CYP-Cyprus Pound",
            "CZK-Czech Koruna",
            "DKK-Danish Krone",
            "DJF-Dijibouti Franc",
            "DOP-Dominican Peso",
            "XCD-East Caribbean Dollar",
            "EGP-Egyptian Pound",
            "SVC-El Salvador Colon",
            "EEK-Estonian Kroon",
            "ETB-Ethiopian Birr",
            "EUR-Euro",
            "FKP-Falkland Islands Pound",
            "GMD-Gambian Dalasi",
            "GHC-Ghanian Cedi",
            "GIP-Gibraltar Pound",
            "XAU-Gold Ounces",
            "GTQ-Guatemala Quetzal",
            "GNF-Guinea Franc",
            "GYD-Guyana Dollar",
            "HTG-Haiti Gourde",
            "HNL-Honduras Lempira",
            "HKD-Hong Kong Dollar",
            "HUF-Hungarian Forint",
            "ISK-Iceland Krona",
            "INR-Indian Rupee",
            "IDR-Indonesian Rupiah",
            "IQD-Iraqi Dinar",
            "ILS-Israeli Shekel",
            "JMD-Jamaican Dollar",
            "JPY-Japanese Yen",
            "JOD-Jordanian Dinar",
            "KZT-Kazakhstan Tenge",
            "KES-Kenyan Shilling",
            "KRW-Korean Won",
            "KWD-Kuwaiti Dinar",
            "LAK-Lao Kip",
            "LVL-Latvian Lat",
            "LBP-Lebanese Pound",
            "LSL-Lesotho Loti",
            "LRD-Liberian Dollar",
            "LYD-Libyan Dinar",
            "LTL-Lithuanian Lita",
            "MOP-Macau Pataca",
            "MKD-Macedonian Denar",
            "MGF-Malagasy Franc",
            "MWK-Malawi Kwacha",
            "MYR-Malaysian Ringgit",
            "MVR-Maldives Rufiyaa",
            "MTL-Maltese Lira",
            "MRO-Mauritania Ougulya",
            "MUR-Mauritius Rupee",
            "MXN-Mexican Peso",
            "MDL-Moldovan Leu",
            "MNT-Mongolian Tugrik",
            "MAD-Moroccan Dirham",
            "MZM-Mozambique Metical",
            "MMK-Myanmar Kyat",
            "NAD-Namibian Dollar",
            "NPR-Nepalese Rupee",
            "ANG-Neth Antilles Guilder",
            "NZD-New Zealand Dollar",
            "NIO-Nicaragua Cordoba",
            "NGN-Nigerian Naira",
            "KPW-North Korean Won",
            "NOK-Norwegian Krone",
            "OMR-Omani Rial",
            "XPF-Pacific Franc",
            "PKR-Pakistani Rupee",
            "XPD-Palladium Ounces",
            "PAB-Panama Balboa",
            "PGK-Papua New Guinea Kina",
            "PYG-Paraguayan Guarani",
            "PEN-Peruvian Nuevo Sol",
            "PHP-Philippine Peso",
            "XPT-Platinum Ounces",
            "PLN-Polish Zloty",
            "QAR-Qatar Rial",
            "ROL-Romanian Leu",
            "RUB-Russian Rouble",
            "WST-Samoa Tala",
            "STD-Sao Tome Dobra",
            "SAR-Saudi Arabian Riyal",
            "SCR-Seychelles Rupee",
            "SLL-Sierra Leone Leone",
            "XAG-Silver Ounces",
            "SGD-Singapore Dollar",
            "SKK-Slovak Koruna",
            "SIT-Slovenian Tolar",
            "SBD-Solomon Islands Dollar",
            "SOS-Somali Shilling",
            "ZAR-South African Rand",
            "LKR-Sri Lanka Rupee",
            "SHP-St Helena Pound",
            "SDD-Sudanese Dinar",
            "SRG-Surinam Guilder",
            "SZL-Swaziland Lilageni",
            "SEK-Swedish Krona",
            "TRY-Turkey Lira",
            "CHF-Swiss Franc",
            "SYP-Syrian Pound",
            "TWD-Taiwan Dollar",
            "TZS-Tanzanian Shilling",
            "THB-Thai Baht",
            "TOP-Tonga Pa\'anga",
            "TTD-Trinidad&amp;Tobago Dollar",
            "TND-Tunisian Dinar",
            "TRL-Turkish Lira",
            "USD-U.S. Dollar",
            "AED-UAE Dirham",
            "UGX-Ugandan Shilling",
            "UAH-Ukraine Hryvnia",
            "UYU-Uruguayan New Peso",
            "VUV-Vanuatu Vatu",
            "VEB-Venezuelan Bolivar",
            "VND-Vietnam Dong",
            "YER-Yemen Riyal",
            "YUM-Yugoslav Dinar",
            "ZMK-Zambian Kwacha",
            "ZWD-Zimbabwe Dollar"});
            this.ddl_CFrom.Location = new System.Drawing.Point(228, 76);
            this.ddl_CFrom.Name = "ddl_CFrom";
            this.ddl_CFrom.Size = new System.Drawing.Size(224, 21);
            this.ddl_CFrom.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(72, 132);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Currency To:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(72, 79);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Currency From:";
            // 
            // ddl_CTo
            // 
            this.ddl_CTo.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.RecentlyUsedList;
            this.ddl_CTo.FormattingEnabled = true;
            this.ddl_CTo.Items.AddRange(new object[] {
            "AFA-Afghanistan Afghani",
            "ALL-Albanian Lek",
            "DZD-Algerian Dinar",
            "ARS-Argentine Peso",
            "AWG-Aruba Florin",
            "AUD-Australian Dollar",
            "BSD-Bahamian Dollar",
            "BHD-Bahraini Dinar",
            "BDT-Bangladesh Taka",
            "BBD-Barbados Dollar",
            "BZD-Belize Dollar",
            "BMD-Bermuda Dollar",
            "BTN-Bhutan Ngultrum",
            "BOB-Bolivian Boliviano",
            "BWP-Botswana Pula",
            "BRL-Brazilian Real",
            "GBP-British Pound",
            "BND-Brunei Dollar",
            "BIF-Burundi Franc",
            "XOF-CFA Franc (BCEAO)",
            "XAF-CFA Franc (BEAC)",
            "KHR-Cambodia Riel",
            "CAD-Canadian Dollar",
            "CVE-Cape Verde Escudo",
            "KYD-Cayman Islands Dollar",
            "CLP-Chilean Peso",
            "CNY-Chinese Yuan",
            "COP-Colombian Peso",
            "KMF-Comoros Franc",
            "CRC-Costa Rica Colon",
            "HRK-Croatian Kuna",
            "CUP-Cuban Peso",
            "CYP-Cyprus Pound",
            "CZK-Czech Koruna",
            "DKK-Danish Krone",
            "DJF-Dijibouti Franc",
            "DOP-Dominican Peso",
            "XCD-East Caribbean Dollar",
            "EGP-Egyptian Pound",
            "SVC-El Salvador Colon",
            "EEK-Estonian Kroon",
            "ETB-Ethiopian Birr",
            "EUR-Euro",
            "FKP-Falkland Islands Pound",
            "GMD-Gambian Dalasi",
            "GHC-Ghanian Cedi",
            "GIP-Gibraltar Pound",
            "XAU-Gold Ounces",
            "GTQ-Guatemala Quetzal",
            "GNF-Guinea Franc",
            "GYD-Guyana Dollar",
            "HTG-Haiti Gourde",
            "HNL-Honduras Lempira",
            "HKD-Hong Kong Dollar",
            "HUF-Hungarian Forint",
            "ISK-Iceland Krona",
            "INR-Indian Rupee",
            "IDR-Indonesian Rupiah",
            "IQD-Iraqi Dinar",
            "ILS-Israeli Shekel",
            "JMD-Jamaican Dollar",
            "JPY-Japanese Yen",
            "JOD-Jordanian Dinar",
            "KZT-Kazakhstan Tenge",
            "KES-Kenyan Shilling",
            "KRW-Korean Won",
            "KWD-Kuwaiti Dinar",
            "LAK-Lao Kip",
            "LVL-Latvian Lat",
            "LBP-Lebanese Pound",
            "LSL-Lesotho Loti",
            "LRD-Liberian Dollar",
            "LYD-Libyan Dinar",
            "LTL-Lithuanian Lita",
            "MOP-Macau Pataca",
            "MKD-Macedonian Denar",
            "MGF-Malagasy Franc",
            "MWK-Malawi Kwacha",
            "MYR-Malaysian Ringgit",
            "MVR-Maldives Rufiyaa",
            "MTL-Maltese Lira",
            "MRO-Mauritania Ougulya",
            "MUR-Mauritius Rupee",
            "MXN-Mexican Peso",
            "MDL-Moldovan Leu",
            "MNT-Mongolian Tugrik",
            "MAD-Moroccan Dirham",
            "MZM-Mozambique Metical",
            "MMK-Myanmar Kyat",
            "NAD-Namibian Dollar",
            "NPR-Nepalese Rupee",
            "ANG-Neth Antilles Guilder",
            "NZD-New Zealand Dollar",
            "NIO-Nicaragua Cordoba",
            "NGN-Nigerian Naira",
            "KPW-North Korean Won",
            "NOK-Norwegian Krone",
            "OMR-Omani Rial",
            "XPF-Pacific Franc",
            "PKR-Pakistani Rupee",
            "XPD-Palladium Ounces",
            "PAB-Panama Balboa",
            "PGK-Papua New Guinea Kina",
            "PYG-Paraguayan Guarani",
            "PEN-Peruvian Nuevo Sol",
            "PHP-Philippine Peso",
            "XPT-Platinum Ounces",
            "PLN-Polish Zloty",
            "QAR-Qatar Rial",
            "ROL-Romanian Leu",
            "RUB-Russian Rouble",
            "WST-Samoa Tala",
            "STD-Sao Tome Dobra",
            "SAR-Saudi Arabian Riyal",
            "SCR-Seychelles Rupee",
            "SLL-Sierra Leone Leone",
            "XAG-Silver Ounces",
            "SGD-Singapore Dollar",
            "SKK-Slovak Koruna",
            "SIT-Slovenian Tolar",
            "SBD-Solomon Islands Dollar",
            "SOS-Somali Shilling",
            "ZAR-South African Rand",
            "LKR-Sri Lanka Rupee",
            "SHP-St Helena Pound",
            "SDD-Sudanese Dinar",
            "SRG-Surinam Guilder",
            "SZL-Swaziland Lilageni",
            "SEK-Swedish Krona",
            "TRY-Turkey Lira",
            "CHF-Swiss Franc",
            "SYP-Syrian Pound",
            "TWD-Taiwan Dollar",
            "TZS-Tanzanian Shilling",
            "THB-Thai Baht",
            "TOP-Tonga Pa\'anga",
            "TTD-Trinidad&amp;Tobago Dollar",
            "TND-Tunisian Dinar",
            "TRL-Turkish Lira",
            "USD-U.S. Dollar",
            "AED-UAE Dirham",
            "UGX-Ugandan Shilling",
            "UAH-Ukraine Hryvnia",
            "UYU-Uruguayan New Peso",
            "VUV-Vanuatu Vatu",
            "VEB-Venezuelan Bolivar",
            "VND-Vietnam Dong",
            "YER-Yemen Riyal",
            "YUM-Yugoslav Dinar",
            "ZMK-Zambian Kwacha",
            "ZWD-Zimbabwe Dollar"});
            this.ddl_CTo.Location = new System.Drawing.Point(228, 129);
            this.ddl_CTo.Name = "ddl_CTo";
            this.ddl_CTo.Size = new System.Drawing.Size(224, 21);
            this.ddl_CTo.TabIndex = 3;
            // 
            // LBL_Result
            // 
            this.LBL_Result.AutoSize = true;
            this.LBL_Result.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LBL_Result.Location = new System.Drawing.Point(225, 246);
            this.LBL_Result.Name = "LBL_Result";
            this.LBL_Result.Size = new System.Drawing.Size(0, 16);
            this.LBL_Result.TabIndex = 5;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.LBL_Result);
            this.groupBox1.Controls.Add(this.btn_Convert);
            this.groupBox1.Controls.Add(this.ddl_CTo);
            this.groupBox1.Controls.Add(this.ddl_CFrom);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(27, 58);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(667, 280);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Currency Conversion";
            // 
            // btn_Convert
            // 
            this.btn_Convert.Location = new System.Drawing.Point(377, 187);
            this.btn_Convert.Name = "btn_Convert";
            this.btn_Convert.Size = new System.Drawing.Size(75, 23);
            this.btn_Convert.TabIndex = 4;
            this.btn_Convert.Text = "Convert";
            this.btn_Convert.UseVisualStyleBackColor = true;
            this.btn_Convert.Click += new System.EventHandler(this.btn_Convert_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(719, 478);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "Currency Converter";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox ddl_CFrom;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox ddl_CTo;
        private System.Windows.Forms.Label LBL_Result;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btn_Convert;
    }
}

