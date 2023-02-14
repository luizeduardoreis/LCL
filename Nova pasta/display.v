module display(
            bcd,
            seg,
			seg2
            );
    input [7:0] bcd;    //initializing bcd as an 4 bit input signal
    output[6:0] seg;    //initializing seg as an 8 bit output signal
	output [6:0] seg2;
    reg [6:0] seg;      //initializing bcd signal as registers
    reg [6:0] seg2;      //initializing bcd signal as registers
     
    always @ (bcd)      //using the always statement to indicate any change in the bcd signal results in evaluating the declared cases
    begin
        case(bcd)   //begining the case statement which evaluates the bcd value and assigns the appropriate contol signals to our 8bit output signal).
            0: seg = 7'b0111111;   //when bcd = 0
            1: seg = 7'b0000110;   //when bcd = 1
            2: seg = 7'b1011011;   //when bcd = 2
            3: seg = 7'b1001111;   //when bcd = 3
            4: seg = 7'b1100110;   //when bcd = 4
            5: seg = 7'b1101101;   //when bcd = 5
            6: seg = 7'b1111101;   //when bcd = 6
            7: seg = 7'b0000111;   //when bcd = 7
            8: seg = 7'b1111111;   //when bcd = 8
            9: seg = 7'b1101111;   //when bcd = 9

            10: seg = 7'b0111111;   //when bcd = 9
            11: seg = 7'b0000110;   //when bcd = 9
            12: seg = 7'b1011011;   //when bcd = 9
            13: seg = 7'b1001111;   //when bcd = 9
            14: seg = 7'b1100110;   //when bcd = 9
            15: seg = 7'b1101101;   //when bcd = 9
            16: seg = 7'b1111101;   //when bcd = 9
            17: seg = 7'b0000111;   //when bcd = 9
            18: seg = 7'b1111111;   //when bcd = 9
            19: seg = 7'b1101111;   //when bcd = 9

            20: seg = 7'b0111111;   //when bcd = 9
            21: seg = 7'b0000110;   //when bcd = 9
            22: seg = 7'b1011011;   //when bcd = 9
            23: seg = 7'b1001111;   //when bcd = 9
            24: seg = 7'b1100110;   //when bcd = 9
            25: seg = 7'b1101101;   //when bcd = 9
            26: seg = 7'b1111101;   //when bcd = 9
            27: seg = 7'b0000111;   //when bcd = 9
            28: seg = 7'b1111111;   //when bcd = 9
            29: seg = 7'b1101111;   //when bcd = 9

            30: seg = 7'b0111111;   //when bcd = 9
            31: seg = 7'b0000110;   //when bcd = 9
            32: seg = 7'b1011011;   //when bcd = 9
            33: seg = 7'b1001111;   //when bcd = 9
            34: seg = 7'b1100110;   //when bcd = 9
            35: seg = 7'b1101101;   //when bcd = 9
            36: seg = 7'b1111101;   //when bcd = 9
            37: seg = 7'b0000111;   //when bcd = 9
            38: seg = 7'b1111111;   //when bcd = 9
            39: seg = 7'b1101111;   //when bcd = 9

            40: seg = 7'b0111111;   //when bcd = 9
            41: seg = 7'b0000110;   //when bcd = 9
            42: seg = 7'b1011011;   //when bcd = 9
            43: seg = 7'b1001111;   //when bcd = 9
            44: seg = 7'b1100110;   //when bcd = 9
            45: seg = 7'b1101101;   //when bcd = 9
            46: seg = 7'b1111101;   //when bcd = 9
            47: seg = 7'b0000111;   //when bcd = 9
            48: seg = 7'b1111111;   //when bcd = 9
            49: seg = 7'b1101111;   //when bcd = 9

            50: seg = 7'b0111111;   //when bcd = 9
            51: seg = 7'b0000110;   //when bcd = 9
            52: seg = 7'b1011011;   //when bcd = 9
            53: seg = 7'b1001111;   //when bcd = 9
            54: seg = 7'b1100110;   //when bcd = 9
            55: seg = 7'b1101101;   //when bcd = 9
            56: seg = 7'b1111101;   //when bcd = 9
            57: seg = 7'b0000111;   //when bcd = 9
            58: seg = 7'b1111111;   //when bcd = 9
            59: seg = 7'b1101111;   //when bcd = 9

            60: seg = 7'b0111111;   //when bcd = 9
            61: seg = 7'b0000110;   //when bcd = 9
            62: seg = 7'b1011011;   //when bcd = 9
            63: seg = 7'b1001111;   //when bcd = 9
            64: seg = 7'b1100110;   //when bcd = 9
            65: seg = 7'b1101101;   //when bcd = 9
            66: seg = 7'b1111101;   //when bcd = 9
            67: seg = 7'b0000111;   //when bcd = 9
            68: seg = 7'b1111111;   //when bcd = 9
            69: seg = 7'b1101111;   //when bcd = 9

            70: seg = 7'b0111111;   //when bcd = 9
            71: seg = 7'b0000110;   //when bcd = 9
            72: seg = 7'b1011011;   //when bcd = 9
            73: seg = 7'b1001111;   //when bcd = 9
            74: seg = 7'b1100110;   //when bcd = 9
            75: seg = 7'b1101101;   //when bcd = 9
            76: seg = 7'b1111101;   //when bcd = 9
            77: seg = 7'b0000111;   //when bcd = 9
            78: seg = 7'b1111111;   //when bcd = 9
            79: seg = 7'b1101111;   //when bcd = 9

            80: seg = 7'b0111111;   //when bcd = 9
            81: seg = 7'b0000110;   //when bcd = 9
            default: seg=7'b0000000;   //any other value
        endcase
        case(bcd)   //begining the case statement which evaluates the bcd value and assigns the appropriate contol signals to our 8bit output signal).
            0: seg2 = 7'b0111111;   //when bcd = 0
            1: seg2 = 7'b0111111;   //when bcd = 1
            2: seg2 = 7'b0111111;   //when bcd = 2
            3: seg2 = 7'b0111111;   //when bcd = 3
            4: seg2 = 7'b0111111;   //when bcd = 4
            5: seg2 = 7'b0111111;   //when bcd = 5
            6: seg2 = 7'b0111111;   //when bcd = 6
            7: seg2 = 7'b0111111;   //when bcd = 7
            8: seg2 = 7'b0111111;   //when bcd = 8
            9: seg2 = 7'b0111111;   //when bcd = 9

            10: seg2 = 7'b0000110;   //when bcd = 9
            11: seg2 = 7'b0000110;   //when bcd = 9
            12: seg2 = 7'b0000110;   //when bcd = 9
            13: seg2 = 7'b0000110;   //when bcd = 9
            14: seg2 = 7'b0000110;   //when bcd = 9
            15: seg2 = 7'b0000110;   //when bcd = 9
            16: seg2 = 7'b0000110;   //when bcd = 9
            17: seg2 = 7'b0000110;   //when bcd = 9
            18: seg2 = 7'b0000110;   //when bcd = 9
            19: seg2 = 7'b0000110;   //when bcd = 9

            20: seg2 = 7'b1011011;   //when bcd = 9
            21: seg2 = 7'b1011011;   //when bcd = 9
            22: seg2 = 7'b1011011;   //when bcd = 9
            23: seg2 = 7'b1011011;   //when bcd = 9
            24: seg2 = 7'b1011011;   //when bcd = 9
            25: seg2 = 7'b1011011;   //when bcd = 9
            26: seg2 = 7'b1011011;   //when bcd = 9
            27: seg2 = 7'b1011011;   //when bcd = 9
            28: seg2 = 7'b1011011;   //when bcd = 9
            29: seg2 = 7'b1011011;   //when bcd = 9

            30: seg2 = 7'b1001111;   //when bcd = 9
            31: seg2 = 7'b1001111;   //when bcd = 9
            32: seg2 = 7'b1001111;   //when bcd = 9
            33: seg2 = 7'b1001111;   //when bcd = 9
            34: seg2 = 7'b1001111;   //when bcd = 9
            35: seg2 = 7'b1001111;   //when bcd = 9
            36: seg2 = 7'b1001111;   //when bcd = 9
            37: seg2 = 7'b1001111;   //when bcd = 9
            38: seg2 = 7'b1001111;   //when bcd = 9
            39: seg2 = 7'b1001111;   //when bcd = 9

            40: seg2 = 7'b1100110;   //when bcd = 9
            41: seg2 = 7'b1100110;   //when bcd = 9
            42: seg2 = 7'b1100110;   //when bcd = 9
            43: seg2 = 7'b1100110;   //when bcd = 9
            44: seg2 = 7'b1100110;   //when bcd = 9
            45: seg2 = 7'b1100110;   //when bcd = 9
            46: seg2 = 7'b1100110;   //when bcd = 9
            47: seg2 = 7'b1100110;   //when bcd = 9
            48: seg2 = 7'b1100110;   //when bcd = 9
            49: seg2 = 7'b1100110;   //when bcd = 9

            50: seg2 = 7'b1101101;   //when bcd = 9
            51: seg2 = 7'b1101101;   //when bcd = 9
            52: seg2 = 7'b1101101;   //when bcd = 9
            53: seg2 = 7'b1101101;   //when bcd = 9
            54: seg2 = 7'b1101101;   //when bcd = 9
            55: seg2 = 7'b1101101;   //when bcd = 9
            56: seg2 = 7'b1101101;   //when bcd = 9
            57: seg2 = 7'b1101101;   //when bcd = 9
            58: seg2 = 7'b1101101;   //when bcd = 9
            59: seg2 = 7'b1101101;   //when bcd = 9

            60: seg2 = 7'b1111101;   //when bcd = 9
            61: seg2 = 7'b1111101;   //when bcd = 9
            62: seg2 = 7'b1111101;   //when bcd = 9
            63: seg2 = 7'b1111101;   //when bcd = 9
            64: seg2 = 7'b1111101;   //when bcd = 9
            65: seg2 = 7'b1111101;   //when bcd = 9
            66: seg2 = 7'b1111101;   //when bcd = 9
            67: seg2 = 7'b1111101;   //when bcd = 9
            68: seg2 = 7'b1111101;   //when bcd = 9
            69: seg2 = 7'b1111101;   //when bcd = 9

            70: seg2 = 7'b0000111;   //when bcd = 9
            71: seg2 = 7'b0000111;   //when bcd = 9
            72: seg2 = 7'b0000111;   //when bcd = 9
            73: seg2 = 7'b0000111;   //when bcd = 9
            74: seg2 = 7'b0000111;   //when bcd = 9
            75: seg2 = 7'b0000111;   //when bcd = 9
            76: seg2 = 7'b0000111;   //when bcd = 9
            77: seg2 = 7'b0000111;   //when bcd = 9
            78: seg2 = 7'b0000111;   //when bcd = 9
            79: seg2 = 7'b0000111;   //when bcd = 9

            80: seg2 = 7'b1111111;   //when bcd = 9
            81: seg2 = 7'b1111111;   //when bcd = 9
            default: seg2=7'b0000000;   //any other value
        endcase
    end
    endmodule
	 