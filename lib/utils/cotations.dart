
int getCotationColor(String cotation){
  switch (cotation) {
    // Cotations 1
    case "1": return COTATION_1A;
    case "1a": return COTATION_1A;
    case "1a+": return COTATION_1A_PLUS;
    case "1b": return COTATION_1B;
    case "1b+": return COTATION_1B_PLUS;
    case "1c": return COTATION_1C;
    case "1c+": return COTATION_1C_PLUS;
    // Cotations 2
    case "2": return COTATION_2A;
    case "2a": return COTATION_2A;
    case "2a+": return COTATION_2A_PLUS;
    case "2b": return COTATION_2B;
    case "2b+": return COTATION_2B_PLUS;
    case "2c": return COTATION_2C;
    case "2c+": return COTATION_2C_PLUS;
    // Cotations 3
    case "3": return COTATION_3A;
    case "3a": return COTATION_3A;
    case "3a+": return COTATION_3B_PLUS;
    case "3b": return COTATION_3B;
    case "3b+": return COTATION_3B_PLUS;
    case "3c": return COTATION_3C;
    case "3c+": return COTATION_3C_PLUS;
    // Cotations 4
    case "4": return COTATION_4A;
    case "4a": return COTATION_4A;
    case "4a+": return COTATION_4B_PLUS;
    case "4b": return COTATION_4B;
    case "4b+": return COTATION_4B_PLUS;
    case "4c": return COTATION_4C;
    case "4c+": return COTATION_4C_PLUS;
    // Cotations 5
    case "5": return COTATION_5A;
    case "5a": return COTATION_5A;
    case "5a+": return COTATION_5B_PLUS;
    case "5b": return COTATION_5B;
    case "5b+": return COTATION_5B_PLUS;
    case "5c": return COTATION_5C;
    case "5c+": return COTATION_5C_PLUS;
    // Cotations 6
    case "6": return COTATION_6A;
    case "6a": return COTATION_6A;
    case "6a+": return COTATION_6B_PLUS;
    case "6b": return COTATION_6B;
    case "6b+": return COTATION_6B_PLUS;
    case "6c": return COTATION_6C;
    case "6c+": return COTATION_6C_PLUS;
    // Cotations 7
    case "7": return COTATION_7A;
    case "7a": return COTATION_7A;
    case "7a+": return COTATION_7B_PLUS;
    case "7b": return COTATION_7B;
    case "7b+": return COTATION_7B_PLUS;
    case "7c": return COTATION_7C;
    case "7c+": return COTATION_7C_PLUS;
    // Cotations 8
    case "8": return COTATION_8A;
    case "8a": return COTATION_8A;
    case "8a+": return COTATION_8B_PLUS;
    case "8b": return COTATION_8B;
    case "8b+": return COTATION_8B_PLUS;
    case "8c": return COTATION_8C;
    case "8c+": return COTATION_8C_PLUS;
    // Cotations 9
    case "9": return COTATION_9A;
    case "9a": return COTATION_9A;
    case "9a+": return COTATION_9B_PLUS;
    case "9b": return COTATION_9B;
    case "9b+": return COTATION_9B_PLUS;
    case "9c": return COTATION_9C;
    case "9c+": return COTATION_9C_PLUS;
  }
}

const int COTATION_1A = 0xFFff55dc;
const int COTATION_1A_PLUS = 0xFFf644d3;
const int COTATION_1B = 0xFFee33c9;
const int COTATION_1B_PLUS = 0xFFe522be;
const int COTATION_1C = 0xFFdd11b4;
const int COTATION_1C_PLUS = 0xFFd400aa;

const int COTATION_2A = 0xFF86cdde;
const int COTATION_2A_PLUS = 0xFF77c6da;
const int COTATION_2B = 0xFF67bfd5;
const int COTATION_2B_PLUS = 0xFF57b8d1;
const int COTATION_2C = 0xFF47b2cc;
const int COTATION_2C_PLUS = 0xFF37aac8;

const int COTATION_3A = 0xFFffdd54;
const int COTATION_3A_PLUS = 0xFFfcd744;
const int COTATION_3B = 0xFFf9d033;
const int COTATION_3B_PLUS = 0xFFf6ca22;
const int COTATION_3C = 0xFFf3c311;
const int COTATION_3C_PLUS = 0xFFf0bd00;

const int COTATION_4A = 0xFFff7f2a;
const int COTATION_4A_PLUS = 0xFFf67722;
const int COTATION_4B = 0xFFee6e19;
const int COTATION_4B_PLUS = 0xFFe56611;
const int COTATION_4C = 0xFFdd5d08;
const int COTATION_4C_PLUS = 0xFFd45500;

const int COTATION_5A = 0xFFaad400;
const int COTATION_5A_PLUS = 0xFF9cc300;
const int COTATION_5B = 0xFF8fb200;
const int COTATION_5B_PLUS = 0xFF81a100;
const int COTATION_5C = 0xFF739000;
const int COTATION_5C_PLUS = 0xFF668000;

const int COTATION_6A = 0xFF0055d4;
const int COTATION_6A_PLUS = 0xFF004bba;
const int COTATION_6B = 0xFF0040a1;
const int COTATION_6B_PLUS = 0xFF003788;
const int COTATION_6C = 0xFF002c6e;
const int COTATION_6C_PLUS = 0xFF002255;

const int COTATION_7A = 0xFFab37c8;
const int COTATION_7A_PLUS = 0xFF9d33b8;
const int COTATION_7B = 0xFF902ea8;
const int COTATION_7B_PLUS = 0xFF822a98;
const int COTATION_7C = 0xFF752588;
const int COTATION_7C_PLUS = 0xFF672178;

const int COTATION_8A = 0xFFff3b3b;
const int COTATION_8A_PLUS = 0xFFff2a2a;
const int COTATION_8B = 0xFFdd1919;
const int COTATION_8B_PLUS = 0xFFcc1111;
const int COTATION_8C = 0xFFbb0808;
const int COTATION_8C_PLUS = 0xFFaa0000;

const int COTATION_9A = 0xFF808080;
const int COTATION_9A_PLUS = 0xFF666666;
const int COTATION_9B = 0xFF4d4d4d;
const int COTATION_9B_PLUS = 0xFF333333;
const int COTATION_9C = 0xFF191919;
const int COTATION_9C_PLUS = 0xFF000000;